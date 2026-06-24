#!/usr/bin/env python3
"""Best-effort pre-build signing cleanup.

Each CI build runs on a fresh, ephemeral runner that has no access to the private
key of any previously created signing certificate, so Xcode cloud signing
(``-allowProvisioningUpdates``) creates a brand-new "Created via API" *Development*
certificate every run. Apple caps how many certificates an account may hold, so
after enough builds the account fills up and the next build fails with
"Your account has reached the maximum number of certificates."

This script keeps that from ever blocking a build: when the CI development
certificates reach a threshold, it revokes them and deletes the now-orphaned
development provisioning profiles. The very next build's cloud signing then
recreates a single fresh cert + profile from a clean slate.

It is intentionally best-effort: any failure is swallowed and the script always
exits 0 so it can never break the build. (The workflow step also runs with
continue-on-error.) It uses the same App Store Connect API key the build uses:
ASC_KEY_ID / ASC_ISSUER_ID / ASC_KEY_P8.

Distribution certs are Apple-managed and reused across builds, so they do not
accumulate and are left untouched.
"""
import os
import sys
import time

API = "https://api.appstoreconnect.apple.com/v1"
# Clean up once the CI dev-cert count reaches this; Apple's limit is ~10-11, so
# this leaves comfortable headroom while only running the disruptive cleanup
# every several builds.
THRESHOLD = 7


def main() -> None:
    try:
        import jwt  # PyJWT
        import requests
    except Exception as exc:  # pragma: no cover - import guard
        print(f"[signing-cleanup] deps unavailable ({exc}); skipping")
        return

    key_id = os.environ.get("ASC_KEY_ID")
    issuer = os.environ.get("ASC_ISSUER_ID")
    p8 = os.environ.get("ASC_KEY_P8")
    if not (key_id and issuer and p8):
        print("[signing-cleanup] ASC API key env not set; skipping")
        return

    def token() -> str:
        now = int(time.time())
        return jwt.encode(
            {"iss": issuer, "iat": now, "exp": now + 1100, "aud": "appstoreconnect-v1"},
            p8,
            algorithm="ES256",
            headers={"kid": key_id, "typ": "JWT"},
        )

    def auth():
        return {"Authorization": "Bearer " + token()}

    certs = requests.get(
        f"{API}/certificates", headers=auth(), params={"limit": 200}, timeout=60
    ).json().get("data", [])
    ci_dev = [
        c for c in certs
        if c["attributes"].get("certificateType") == "DEVELOPMENT"
        and c["attributes"].get("displayName") == "Created via API"
    ]
    print(f"[signing-cleanup] {len(ci_dev)} CI development certificate(s) (threshold {THRESHOLD})")

    if len(ci_dev) < THRESHOLD:
        print("[signing-cleanup] under threshold; nothing to do")
        return

    for c in ci_dev:
        r = requests.delete(f"{API}/certificates/{c['id']}", headers=auth(), timeout=60)
        print(f"[signing-cleanup] revoked cert {c['id']} -> {r.status_code}")

    profiles = requests.get(
        f"{API}/profiles", headers=auth(),
        params={"limit": 200, "fields[profiles]": "name,profileType"}, timeout=60,
    ).json().get("data", [])
    for p in profiles:
        if p["attributes"].get("profileType") == "IOS_APP_DEVELOPMENT":
            r = requests.delete(f"{API}/profiles/{p['id']}", headers=auth(), timeout=60)
            print(f"[signing-cleanup] deleted dev profile {p['id']} -> {r.status_code}")

    # Give Apple's backend a moment to settle before the build recreates signing.
    print("[signing-cleanup] cleaned; waiting 45s for backend to settle")
    time.sleep(45)


if __name__ == "__main__":
    try:
        main()
    except Exception as exc:  # never fail the build
        print(f"[signing-cleanup] non-fatal error: {exc}")
    sys.exit(0)

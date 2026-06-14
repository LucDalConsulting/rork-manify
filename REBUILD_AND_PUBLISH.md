# Manify — How to rebuild and publish (no Rork, no Mac)

This is the plain-English guide for getting code changes onto your phone and into
the App Store **without Rork and without owning a Mac**. It uses GitHub's free Mac
build servers (your repo is public, so the Mac build minutes are free).

There are two automated pipelines:

| Workflow | When it runs | What it does | Needs secrets? |
|---|---|---|---|
| **iOS Build Check** | automatically on every push to `main` | Compiles the app on a real Mac to catch errors. Does **not** publish. | No |
| **iOS Release (TestFlight / App Store)** | when **you** click "Run workflow" | Builds, signs, and uploads to **TestFlight** (your phone) or the **App Store**. | Yes (one-time setup below) |

---

## A. One-time setup (do this once)

You'll add 5 "secrets" to GitHub. Think of secrets as passwords the build server
uses on your behalf. They are encrypted and never visible in the code.

Go to: **github.com/LucDalConsulting/rork-manify → Settings → Secrets and variables → Actions → "New repository secret"**, and add each of these:

### 1. `APPLE_TEAM_ID`
- Go to **developer.apple.com → Account → Membership details**.
- Copy your **Team ID** (10 characters, e.g. `AB12CD34EF`). Paste as the secret value.

### 2–4. App Store Connect API key (`ASC_KEY_ID`, `ASC_ISSUER_ID`, `ASC_KEY_P8`)
This is a key that lets the build server sign and upload builds for you.
- Go to **App Store Connect → Users and Access → Integrations tab → App Store Connect API**.
- Click the **+** to generate a key. Name it `Manify CI`. Access role: **App Manager**.
- After it's created:
  - Copy the **Key ID** → save as secret **`ASC_KEY_ID`**.
  - Copy the **Issuer ID** (shown at the top of the page) → save as secret **`ASC_ISSUER_ID`**.
  - Click **Download API Key** — this downloads a file named `AuthKey_XXXXXX.p8`.
    **You can only download it once.** Open that file in a text editor, copy the
    **entire contents** (including the `-----BEGIN PRIVATE KEY-----` lines) →
    save as secret **`ASC_KEY_P8`**.

### 5. `REVENUECAT_IOS_API_KEY`
- This makes in-app purchases work (see section C). It's the public RevenueCat SDK key for the iOS app (it starts with `appl_`).
- Get it from **app.revenuecat.com → your project → API Keys** → copy the **Public app-specific key** for the App Store app → save as secret **`REVENUECAT_IOS_API_KEY`**.
- (If you haven't set up RevenueCat yet, do section C first, then come back and add this secret.)

---

## B. Rebuilding and sending the app to your phone (the everyday flow)

Whenever the code changes (e.g. after I push updates):

1. Go to **github.com/LucDalConsulting/rork-manify → Actions** tab.
2. In the left sidebar click **iOS Release (TestFlight / App Store)**.
3. Click **Run workflow** (top right) → leave the choice on **`beta`** → **Run workflow**.
4. Wait ~15–25 minutes. When it finishes (green check), the build is in **TestFlight**.
5. Open the **TestFlight** app on your iPhone → **Manify** → **Update** / install the new build.

That's it — no Mac, no Rork. To publish to the **public App Store** instead, pick
**`release`** in step 3; the build uploads to App Store Connect, where you then
press **Submit for Review** (Apple still reviews every public release).

> Tip: every push to `main` also runs **iOS Build Check** automatically. If that one
> is green, the code compiles. If it's red, something needs fixing before a release.

---

## C. Turn on the $9.99 lifetime membership (in-app purchase)

The purchase code is already built (RevenueCat). It just needs the store product
and accounts connected. This is mostly clicking through two dashboards.

### C1. App Store Connect — create the product
1. **App Store Connect → Business** (Agreements, Tax, and Banking): make sure the
   **Paid Apps agreement** is **Active**, and tax + banking are filled in.
   *Purchases cannot charge anyone until this is done.*
2. **App Store Connect → Apps → Manify → Monetization → In-App Purchases → +**.
3. Type: **Non-Consumable**. 
   - Reference Name: `Manify Lifetime Membership`
   - Product ID: `manify_lifetime` (write this down — RevenueCat needs it exactly).
   - Price: **$9.99** (USD tier).
   - Add a localization (Display Name: "Manify Membership", Description: "One-time
     payment. Unlock all tiers, all courses, and unlimited daily lessons forever.").
   - Add a review screenshot of the paywall and **Save**. (It will be reviewed with
     your next app submission.)

### C2. RevenueCat — connect the product
1. Create a free account at **app.revenuecat.com**, create a **Project** named `Manify`.
2. Add an **App** → platform **App Store** → bundle ID `app.rork.v1a55roljwoddm76u9mkv`.
   Connect it using the App Store Connect API key from section A (RevenueCat will
   ask for it / an in-app-purchase key).
3. **Products** → **+ New** → import/add product ID `manify_lifetime`.
4. **Entitlements** → **+ New** → identifier **`premium`** (must be exactly this) →
   attach the `manify_lifetime` product to it.
5. **Offerings** → make sure there is a **Current** offering (default) with a
   **package** that contains `manify_lifetime`.
6. **API Keys** → copy the **public app-specific key** (`appl_...`) → add it to
   GitHub as the secret **`REVENUECAT_IOS_API_KEY`** (section A, step 5).

The app reads the entitlement named **`premium`** and the **current offering's first
package** — that's why the names above matter.

### C3. Test it
- Run a **`beta`** release (section B). In TestFlight, sandbox purchases don't charge
  real money — you can confirm the purchase flow and "Membership Active" state work.

---

## D. Backup / alternative paths

- **Rork** still works: pushing to GitHub and rebuilding in Rork rebuilds the same app.
  This GitHub pipeline simply makes you independent of it.
- **A Mac with Xcode** (if you ever get one): open `ios/Manify.xcodeproj`, pick your
  team under Signing, and Product → Archive → Distribute. Everything here also works there.
- **Codemagic** (codemagic.io) is a GUI alternative to GitHub Actions with a free tier,
  if you'd prefer a dashboard over the Actions tab.

---

## E. What changed in this round of work
- Fixed the silent "Listen" button (audio session) and added a full audio player
  (play/pause, skip ±10s, speed, scrubber, auto-scrolling sections).
- Lesson section headers are now topic-specific.
- Many more lessons and tiers across all topics, plus new topics.
- In-app purchase code hardened; this guide covers switching it on.
- Added this Rork-free build/release pipeline.

import Foundation

// RevenueCat public SDK key.
//
// Intentionally EMPTY in the repository — the key is never committed. The CI
// release workflow (.github/workflows/ios-release.yml) overwrites this file's
// contents with the real key from the REVENUECAT_IOS_API_KEY secret right before
// building, so the compiled app contains the key while the repo does not.
//
// (Custom INFOPLIST_KEY_* entries like RCAPIKey are silently dropped by Xcode's
// generated Info.plist, so we inject via this constant instead.)
enum RCConfig {
    static let apiKey = ""
}

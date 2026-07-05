import RevenueCat
import SwiftUI

@Observable
@MainActor
final class MembershipService {
    private(set) var isPremium: Bool = false
    private(set) var isLoading: Bool = false
    private(set) var isPurchasing: Bool = false
    var purchaseError: String?
    private(set) var offerings: Offerings?

    /// Product identifier backing the active "premium" entitlement, if any. Lets the
    /// UI tell a grandfathered lifetime owner apart from a monthly subscriber without
    /// changing the (generic) entitlement check.
    private(set) var activeProductID: String?

    private let premiumKey = "manify_is_premium"
    // The paywall now sells the monthly subscription. Legacy "manify_lifetime" owners
    // keep access through the "premium" entitlement — that product stays attached to
    // the entitlement in RevenueCat, it's just no longer offered for sale.
    private let productID = "manify_monthly"
    private let lifetimeProductID = "manify_lifetime"
    private var didBootstrap = false

    private var isConfigured: Bool {
        Purchases.isConfigured
    }

    init() {
        // Only load the cached entitlement here. RevenueCat is configured in
        // ManifyApp.init(), which runs AFTER this property is created — so any
        // Purchases.shared work must wait for bootstrap() once configuration is live.
        isPremium = UserDefaults.standard.bool(forKey: premiumKey)
    }

    /// Starts the entitlement listener and loads offerings once RevenueCat is
    /// configured. Safe to call repeatedly (it only runs once). Call this from the
    /// app's first view so the price string and live status are available.
    func bootstrap() {
        guard isConfigured, !didBootstrap else { return }
        didBootstrap = true
        Task { await listenForUpdates() }
        Task { await fetchOfferings() }
        Task { await checkStatus() }
    }

    private func listenForUpdates() async {
        guard isConfigured else { return }
        for await info in Purchases.shared.customerInfoStream {
            apply(info)
        }
    }

    func fetchOfferings() async {
        guard isConfigured else { return }
        isLoading = true
        do {
            offerings = try await Purchases.shared.offerings()
            purchaseError = nil
        } catch {
            // Don't show raw SDK config errors to users
        }
        isLoading = false
    }

    func purchase() async {
        guard isConfigured else {
            purchaseError = "Purchases not configured."
            return
        }
        isPurchasing = true
        purchaseError = nil

        // 1. Use a package from the already-loaded offering if we have one.
        if let pkg = offerings?.current?.availablePackages.first {
            await doPurchase(package: pkg)
            isPurchasing = false
            return
        }

        // 2. Offering missing/empty — refetch once and retry.
        if let fresh = try? await Purchases.shared.offerings() {
            offerings = fresh
            if let pkg = fresh.current?.availablePackages.first {
                await doPurchase(package: pkg)
                isPurchasing = false
                return
            }
        }

        // 3. Last resort — fetch the product directly by its ID so the App Store
        //    purchase sheet still appears even if the RevenueCat offering is
        //    unavailable or empty in this environment.
        let products = await Purchases.shared.products([productID])
        if let product = products.first {
            await doPurchase(product: product)
            isPurchasing = false
            return
        }

        purchaseError = "Couldn't reach the App Store. Check your connection and try again."
        isPurchasing = false
    }

    private func doPurchase(package: Package) async {
        do {
            let result = try await Purchases.shared.purchase(package: package)
            applyPurchase(result)
        } catch ErrorCode.purchaseCancelledError {
            // user cancelled
        } catch ErrorCode.paymentPendingError {
            purchaseError = "Purchase is pending approval."
        } catch {
            purchaseError = "Purchase failed. Try again."
        }
    }

    private func doPurchase(product: StoreProduct) async {
        do {
            let result = try await Purchases.shared.purchase(product: product)
            applyPurchase(result)
        } catch ErrorCode.purchaseCancelledError {
            // user cancelled
        } catch ErrorCode.paymentPendingError {
            purchaseError = "Purchase is pending approval."
        } catch {
            purchaseError = "Purchase failed. Try again."
        }
    }

    private func applyPurchase(_ result: PurchaseResultData) {
        guard !result.userCancelled else { return }
        apply(result.customerInfo)
    }

    func restorePurchases() async {
        guard isConfigured else {
            purchaseError = "Purchases not configured."
            return
        }
        isLoading = true
        purchaseError = nil

        do {
            let info = try await Purchases.shared.restorePurchases()
            apply(info)
            if !isPremium {
                purchaseError = "No previous purchase found."
            }
        } catch {
            purchaseError = "Restore failed. Try again."
        }

        isLoading = false
    }

    var currentPackage: Package? {
        offerings?.current?.availablePackages.first
    }

    var priceString: String? {
        currentPackage?.storeProduct.localizedPriceString
    }

    /// Price with billing period, e.g. "$2.49/month", for the subscription CTA and
    /// the required auto-renewal disclosure.
    var monthlyPriceString: String {
        "\(priceString ?? "$2.49")/month"
    }

    /// True when the active entitlement is backed by the legacy lifetime purchase, so
    /// the UI can label grandfathered owners "Lifetime" rather than "Renews Monthly".
    var isLifetimeMember: Bool {
        activeProductID == lifetimeProductID
    }

    func checkStatus() async {
        guard isConfigured else { return }
        do {
            let info = try await Purchases.shared.customerInfo()
            apply(info)
        } catch {}
    }

    /// Single place that maps RevenueCat customer info to local state. The "premium"
    /// entitlement is checked generically, so lifetime owners and monthly subscribers
    /// are both recognized as premium.
    private func apply(_ info: CustomerInfo) {
        let entitlement = info.entitlements["premium"]
        let active = entitlement?.isActive == true
        isPremium = active
        activeProductID = active ? entitlement?.productIdentifier : nil
        UserDefaults.standard.set(active, forKey: premiumKey)
    }
}

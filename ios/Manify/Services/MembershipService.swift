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

    private let premiumKey = "manify_is_premium"
    private let productID = "manify_lifetime"
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
            let active = info.entitlements["premium"]?.isActive == true
            isPremium = active
            UserDefaults.standard.set(active, forKey: premiumKey)
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
        let active = result.customerInfo.entitlements["premium"]?.isActive == true
        isPremium = active
        UserDefaults.standard.set(active, forKey: premiumKey)
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
            let active = info.entitlements["premium"]?.isActive == true
            isPremium = active
            UserDefaults.standard.set(active, forKey: premiumKey)

            if !active {
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

    func checkStatus() async {
        guard isConfigured else { return }
        do {
            let info = try await Purchases.shared.customerInfo()
            let active = info.entitlements["premium"]?.isActive == true
            isPremium = active
            UserDefaults.standard.set(active, forKey: premiumKey)
        } catch {}
    }
}

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

    init() {
        isPremium = UserDefaults.standard.bool(forKey: premiumKey)
        Task { await listenForUpdates() }
        Task { await fetchOfferings() }
        Task { await checkStatus() }
    }

    private func listenForUpdates() async {
        for await info in Purchases.shared.customerInfoStream {
            let active = info.entitlements["premium"]?.isActive == true
            isPremium = active
            UserDefaults.standard.set(active, forKey: premiumKey)
        }
    }

    func fetchOfferings() async {
        isLoading = true
        do {
            offerings = try await Purchases.shared.offerings()
        } catch {
            purchaseError = error.localizedDescription
        }
        isLoading = false
    }

    func purchase() async {
        guard let package = offerings?.current?.availablePackages.first else {
            isPurchasing = true
            purchaseError = nil
            do {
                let freshOfferings = try await Purchases.shared.offerings()
                offerings = freshOfferings
                guard let pkg = freshOfferings.current?.availablePackages.first else {
                    purchaseError = "Product unavailable. Try again later."
                    isPurchasing = false
                    return
                }
                await doPurchase(package: pkg)
            } catch {
                purchaseError = "Unable to load product. Try again."
                isPurchasing = false
            }
            return
        }
        await doPurchase(package: package)
    }

    private func doPurchase(package: Package) async {
        isPurchasing = true
        purchaseError = nil

        do {
            let result = try await Purchases.shared.purchase(package: package)
            if !result.userCancelled {
                let active = result.customerInfo.entitlements["premium"]?.isActive == true
                isPremium = active
                UserDefaults.standard.set(active, forKey: premiumKey)
            }
        } catch ErrorCode.purchaseCancelledError {
            // user cancelled
        } catch ErrorCode.paymentPendingError {
            purchaseError = "Purchase is pending approval."
        } catch {
            purchaseError = "Purchase failed. Try again."
        }

        isPurchasing = false
    }

    func restorePurchases() async {
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

    func checkStatus() async {
        do {
            let info = try await Purchases.shared.customerInfo()
            let active = info.entitlements["premium"]?.isActive == true
            isPremium = active
            UserDefaults.standard.set(active, forKey: premiumKey)
        } catch {}
    }
}

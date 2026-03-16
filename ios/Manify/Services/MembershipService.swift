import StoreKit
import SwiftUI

@Observable
@MainActor
final class MembershipService {
    private(set) var isPremium: Bool = false
    private(set) var isLoading: Bool = false
    private(set) var purchaseError: String?

    static let productID = "manify_membership_lifetime"
    private let premiumKey = "manify_is_premium"
    private let unlockDateKey = "manify_unlock_date"

    init() {
        isPremium = UserDefaults.standard.bool(forKey: premiumKey)
        Task { await listenForTransactions() }
        Task { await checkEntitlements() }
    }

    func purchase() async {
        isLoading = true
        purchaseError = nil

        do {
            let products = try await Product.products(for: [Self.productID])
            guard let product = products.first else {
                isPremium = true
                savePremiumStatus(true)
                isLoading = false
                return
            }

            let result = try await product.purchase()
            switch result {
            case .success(let verification):
                let transaction = try checkVerified(verification)
                await transaction.finish()
                setPremium()
            case .userCancelled:
                break
            case .pending:
                purchaseError = "Purchase is pending approval."
            @unknown default:
                break
            }
        } catch {
            purchaseError = "Purchase failed. Try again."
        }

        isLoading = false
    }

    func restorePurchases() async {
        isLoading = true
        purchaseError = nil

        do {
            try await AppStore.sync()
            await checkEntitlements()

            if !isPremium {
                purchaseError = "No previous purchase found."
            }
        } catch {
            purchaseError = "Restore failed. Try again."
        }

        isLoading = false
    }

    private func checkEntitlements() async {
        for await result in Transaction.currentEntitlements {
            if let transaction = try? checkVerified(result) {
                if transaction.productID == Self.productID {
                    setPremium()
                    return
                }
            }
        }
    }

    private func listenForTransactions() async {
        for await result in Transaction.updates {
            if let transaction = try? checkVerified(result) {
                if transaction.productID == Self.productID {
                    setPremium()
                }
                await transaction.finish()
            }
        }
    }

    private func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified:
            throw StoreError.failedVerification
        case .verified(let safe):
            return safe
        }
    }

    private func setPremium() {
        isPremium = true
        savePremiumStatus(true)
    }

    private func savePremiumStatus(_ value: Bool) {
        UserDefaults.standard.set(value, forKey: premiumKey)
        if value {
            UserDefaults.standard.set(Date().timeIntervalSince1970, forKey: unlockDateKey)
        }
    }
}

nonisolated enum StoreError: Error, Sendable {
    case failedVerification
}

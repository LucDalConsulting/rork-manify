import AuthenticationServices
import SwiftUI

@Observable
@MainActor
final class AuthService {
    private(set) var isAuthenticated: Bool = false
    private(set) var isGuest: Bool = false
    private(set) var username: String = "Guest"
    private(set) var email: String?
    private(set) var authProvider: String?
    private(set) var isLoading: Bool = false
    var errorMessage: String?

    var hasCompletedOnboarding: Bool {
        UserDefaults.standard.bool(forKey: onboardingKey)
    }

    private let onboardingKey = "manify_onboarding_complete"
    private let authStateKey = "manify_auth_state"
    private let usernameKey = "manify_username"
    private let emailKey = "manify_email"
    private let providerKey = "manify_auth_provider"
    private let guestKey = "manify_is_guest"

    init() {
        loadState()
    }

    func signInWithApple(result: Result<ASAuthorization, Error>) {
        isLoading = true
        errorMessage = nil

        switch result {
        case .success(let auth):
            if let credential = auth.credential as? ASAuthorizationAppleIDCredential {
                let userId = credential.user
                let fullName = [credential.fullName?.givenName, credential.fullName?.familyName]
                    .compactMap { $0 }
                    .joined(separator: " ")
                let detectedEmail = credential.email

                username = fullName.isEmpty ? "Manify User" : fullName
                email = detectedEmail ?? email
                authProvider = "apple"
                isGuest = false
                isAuthenticated = true

                UserDefaults.standard.set(userId, forKey: authStateKey)
                saveState()
                markOnboardingComplete()
            }
        case .failure:
            errorMessage = "Apple Sign In was cancelled."
        }

        isLoading = false
    }

    func signInWithEmail(emailInput: String, password: String) {
        isLoading = true
        errorMessage = nil

        guard !emailInput.isEmpty, !password.isEmpty else {
            errorMessage = "Enter your email and password."
            isLoading = false
            return
        }

        guard password.count >= 6 else {
            errorMessage = "Password must be at least 6 characters."
            isLoading = false
            return
        }

        username = emailInput.components(separatedBy: "@").first ?? "Manify User"
        email = emailInput
        authProvider = "email"
        isGuest = false
        isAuthenticated = true

        saveState()
        markOnboardingComplete()
        isLoading = false
    }

    func createAccount(emailInput: String, password: String, displayName: String) {
        isLoading = true
        errorMessage = nil

        guard !emailInput.isEmpty, !password.isEmpty else {
            errorMessage = "All fields are required."
            isLoading = false
            return
        }

        guard password.count >= 6 else {
            errorMessage = "Password must be at least 6 characters."
            isLoading = false
            return
        }

        username = displayName.isEmpty ? emailInput.components(separatedBy: "@").first ?? "User" : displayName
        email = emailInput
        authProvider = "email"
        isGuest = false
        isAuthenticated = true

        saveState()
        markOnboardingComplete()
        isLoading = false
    }

    func continueAsGuest() {
        isGuest = true
        isAuthenticated = false
        username = "Guest"
        email = nil
        authProvider = "guest"

        saveState()
        markOnboardingComplete()
    }

    func updateUsername(_ newName: String) {
        guard !newName.isEmpty else { return }
        username = newName
        saveState()
    }

    func signOut() {
        isAuthenticated = false
        isGuest = true
        username = "Guest"
        email = nil
        authProvider = "guest"

        UserDefaults.standard.removeObject(forKey: authStateKey)
        saveState()
    }

    private func markOnboardingComplete() {
        UserDefaults.standard.set(true, forKey: onboardingKey)
    }

    private func saveState() {
        UserDefaults.standard.set(username, forKey: usernameKey)
        UserDefaults.standard.set(email, forKey: emailKey)
        UserDefaults.standard.set(authProvider, forKey: providerKey)
        UserDefaults.standard.set(isGuest, forKey: guestKey)
        UserDefaults.standard.set(isAuthenticated, forKey: "manify_is_authenticated")
    }

    private func loadState() {
        let completed = UserDefaults.standard.bool(forKey: onboardingKey)
        guard completed else { return }

        isAuthenticated = UserDefaults.standard.bool(forKey: "manify_is_authenticated")
        isGuest = UserDefaults.standard.bool(forKey: guestKey)
        username = UserDefaults.standard.string(forKey: usernameKey) ?? "Guest"
        email = UserDefaults.standard.string(forKey: emailKey)
        authProvider = UserDefaults.standard.string(forKey: providerKey)
    }
}

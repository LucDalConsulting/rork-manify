import RevenueCat
import SwiftUI

@main
struct ManifyApp: App {
    @State private var lessonStore = LessonStore()
    @State private var progressStore = ProgressStore()
    @State private var membershipService = MembershipService()
    @State private var notificationService = NotificationService()
    @State private var authService = AuthService()
    @State private var reviewManager = ReviewManager()

    init() {
        #if DEBUG
        Purchases.logLevel = .debug
        #endif
        // Primary source: the CI-injected constant (see RCConfig.swift). Fall back
        // to Info.plist keys if present.
        var apiKey = RCConfig.apiKey
        if apiKey.isEmpty {
            apiKey = (Bundle.main.object(forInfoDictionaryKey: "RCAPIKey") as? String)
                ?? (Bundle.main.object(forInfoDictionaryKey: "RCTestAPIKey") as? String)
                ?? ""
        }
        if !apiKey.isEmpty {
            Purchases.configure(withAPIKey: apiKey)
        }
    }

    var body: some Scene {
        WindowGroup {
            Group {
                if authService.hasCompletedOnboarding {
                    ContentView()
                } else {
                    OnboardingScreen()
                }
            }
            .environment(lessonStore)
            .environment(progressStore)
            .environment(membershipService)
            .environment(notificationService)
            .environment(authService)
            .environment(reviewManager)
            .preferredColorScheme(.dark)
            .task {
                // RevenueCat is configured by now; start the entitlement listener
                // and load offerings/price app-wide.
                membershipService.bootstrap()
            }
        }
    }
}

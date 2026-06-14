import RevenueCat
import SwiftUI

@main
struct ManifyApp: App {
    @State private var lessonStore = LessonStore()
    @State private var progressStore = ProgressStore()
    @State private var membershipService = MembershipService()
    @State private var notificationService = NotificationService()
    @State private var authService = AuthService()

    init() {
        let apiKey: String
        #if DEBUG
        Purchases.logLevel = .debug
        apiKey = Bundle.main.object(forInfoDictionaryKey: "RCTestAPIKey") as? String ?? ""
        #else
        apiKey = Bundle.main.object(forInfoDictionaryKey: "RCAPIKey") as? String ?? ""
        #endif
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
            .preferredColorScheme(.dark)
            .task {
                // RevenueCat is configured by now; start the entitlement listener
                // and load offerings/price app-wide.
                membershipService.bootstrap()
            }
        }
    }
}

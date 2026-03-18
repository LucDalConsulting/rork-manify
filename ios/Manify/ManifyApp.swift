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
        #if DEBUG
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: Config.EXPO_PUBLIC_REVENUECAT_TEST_API_KEY)
        #else
        Purchases.configure(withAPIKey: Config.EXPO_PUBLIC_REVENUECAT_IOS_API_KEY)
        #endif
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
        }
    }
}

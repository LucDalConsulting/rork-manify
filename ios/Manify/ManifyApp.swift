import SwiftUI

@main
struct ManifyApp: App {
    @State private var lessonStore = LessonStore()
    @State private var progressStore = ProgressStore()
    @State private var membershipService = MembershipService()
    @State private var notificationService = NotificationService()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(lessonStore)
                .environment(progressStore)
                .environment(membershipService)
                .environment(notificationService)
                .preferredColorScheme(.dark)
        }
    }
}

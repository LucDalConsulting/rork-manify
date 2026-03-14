import SwiftUI

@main
struct ManifyApp: App {
    @State private var lessonStore = LessonStore()
    @State private var progressStore = ProgressStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(lessonStore)
                .environment(progressStore)
                .preferredColorScheme(.dark)
        }
    }
}

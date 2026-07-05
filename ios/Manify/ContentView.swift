import StoreKit
import SwiftUI

struct ContentView: View {
    @Environment(ProgressStore.self) private var progressStore
    @Environment(ReviewManager.self) private var reviewManager
    @Environment(\.requestReview) private var requestReview
    @State private var selectedTab: AppTab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house.fill", value: .home) {
                HomeScreen()
            }

            Tab("Training", systemImage: "book.fill", value: .training) {
                TrainingTab()
            }

            Tab("Progress", systemImage: "chart.bar.fill", value: .progress) {
                ProgressScreen()
            }

            Tab("My Account", systemImage: "person.crop.circle.fill", value: .account) {
                MyAccountScreen()
            }
        }
        .tint(ManifyTheme.gold)
        .onChange(of: progressStore.completedLessonCount) { _, newCount in
            // After the 1st / 5th / 10th completed lesson, ask Apple to show its
            // native review prompt. This is the App Store-compliant path (Apple owns
            // the prompt and throttles it to ~3/year — aligned with our 3 milestones),
            // and because it fires for engaged users it naturally skews ratings positive.
            // completedLessonCount only increases on a genuine new completion (single
            // write in submitQuizScore), so this evaluates exactly once per new lesson.
            guard reviewManager.shouldAutoPrompt(completedCount: newCount) else { return }
            Task { @MainActor in
                // Let the quiz/exercise completion UI settle so the prompt lands on a
                // calm screen rather than over the results animation.
                try? await Task.sleep(for: .seconds(1))
                guard reviewManager.shouldAutoPrompt(completedCount: newCount) else { return }
                reviewManager.recordPromptShown(atCount: newCount)
                requestReview()
            }
        }
    }
}

enum AppTab: Hashable {
    case home, training, progress, account
}

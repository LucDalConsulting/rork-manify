import SwiftUI

struct ContentView: View {
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
        }
        .tint(ManifyTheme.gold)
    }
}

enum AppTab: Hashable {
    case home, training, progress
}

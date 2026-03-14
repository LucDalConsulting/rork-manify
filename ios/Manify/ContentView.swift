import SwiftUI

struct ContentView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house.fill", value: .home) {
                HomeScreen()
            }

            Tab("Constitution", systemImage: "building.columns.fill", value: .constitution) {
                CategoryNavigationView(category: .constitution)
            }

            Tab("Firearms", systemImage: "scope", value: .firearms) {
                CategoryNavigationView(category: .firearms)
            }

            Tab("Home Sys", systemImage: "wrench.and.screwdriver.fill", value: .homeSystems) {
                CategoryNavigationView(category: .home)
            }

            Tab("Progress", systemImage: "chart.bar.fill", value: .progress) {
                ProgressScreen()
            }
        }
        .tint(ManifyTheme.gold)
    }
}

enum AppTab: Hashable {
    case home, constitution, firearms, homeSystems, progress
}

struct CategoryNavigationView: View {
    let category: CategoryID

    var body: some View {
        NavigationStack {
            CategoryScreen(category: category)
                .navigationDestination(for: Lesson.self) { lesson in
                    LessonScreen(lesson: lesson)
                }
        }
    }
}

import SwiftUI

struct HomeScreen: View {
    @Environment(LessonStore.self) private var lessonStore
    @Environment(ProgressStore.self) private var progressStore

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    header
                    streakBar
                    continueCard
                    quickActions
                    categorySection
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 32)
            }
            .background(ManifyTheme.bg.ignoresSafeArea())
            .navigationDestination(for: CategoryID.self) { category in
                CategoryScreen(category: category)
            }
            .navigationDestination(for: Lesson.self) { lesson in
                LessonScreen(lesson: lesson)
            }
        }
    }

    private var header: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text("MANIFY")
                    .font(.system(size: 28, weight: .black, design: .default))
                    .foregroundStyle(ManifyTheme.goldGradient)
                    .tracking(3)

                Text("Daily competence training")
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.textSecondary)
            }

            Spacer()

            RankBadge(rank: progressStore.currentRank, totalXP: progressStore.totalXP, compact: true)
        }
        .padding(.top, 8)
    }

    private var streakBar: some View {
        HStack(spacing: 20) {
            statItem(value: "\(progressStore.currentStreak)", label: "Streak", icon: "flame.fill", color: ManifyTheme.warning)
            statItem(value: "\(progressStore.totalXP)", label: "XP", icon: "star.fill", color: ManifyTheme.gold)
            statItem(value: "\(progressStore.disciplineIndex())", label: "Index", icon: "chart.bar.fill", color: ManifyTheme.success)
            statItem(value: "\(progressStore.flashcardsDueCount)", label: "Due", icon: "rectangle.stack.fill", color: .blue)
        }
        .padding(14)
        .frame(maxWidth: .infinity)
        .background(ManifyTheme.panel)
        .clipShape(.rect(cornerRadius: 14))
    }

    private func statItem(value: String, label: String, icon: String, color: Color) -> some View {
        VStack(spacing: 6) {
            Image(systemName: icon)
                .font(.subheadline)
                .foregroundStyle(color)

            Text(value)
                .font(.title3.weight(.bold))
                .foregroundStyle(ManifyTheme.textPrimary)

            Text(label)
                .font(.caption2)
                .foregroundStyle(ManifyTheme.textSecondary)
        }
        .frame(maxWidth: .infinity)
    }

    @ViewBuilder
    private var continueCard: some View {
        let currentLesson = findCurrentLesson()
        if let lesson = currentLesson {
            NavigationLink(value: lesson) {
                ContinueTrainingCard(
                    lesson: lesson,
                    progress: progressStore.progress(for: lesson.id)
                )
            }
            .buttonStyle(.plain)
        }
    }

    private var quickActions: some View {
        HStack(spacing: 12) {
            quickActionButton(title: "Review", subtitle: "Weak spots", icon: "arrow.counterclockwise", color: ManifyTheme.warning)
            quickActionButton(title: "Flashcards", subtitle: "\(progressStore.flashcardsDueCount) due", icon: "rectangle.stack.fill", color: .blue)
        }
    }

    private func quickActionButton(title: String, subtitle: String, icon: String, color: Color) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(color)

            Text(title)
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(ManifyTheme.textPrimary)

            Text(subtitle)
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.white.opacity(0.04), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 12))
    }

    private var categorySection: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("TRAINING TRACKS")
                .font(.caption.weight(.bold))
                .foregroundStyle(ManifyTheme.textSecondary)
                .tracking(1.2)

            LazyVGrid(columns: [GridItem(.flexible(), spacing: 12), GridItem(.flexible(), spacing: 12)], spacing: 12) {
                ForEach(CategoryID.allCases) { category in
                    let lessons = lessonStore.lessons(for: category)
                    NavigationLink(value: category) {
                        CategoryTile(
                            category: category,
                            mastery: progressStore.categoryMastery(for: category, lessons: lessons),
                            lessonsAvailable: lessons.count
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }

    private func findCurrentLesson() -> Lesson? {
        if let currentId = progressStore.userData.currentLessonId,
           let lesson = lessonStore.lesson(by: currentId) {
            if !progressStore.isLessonCompleted(currentId) {
                return lesson
            }
            if let next = lessonStore.nextLesson(after: currentId, in: lesson.categoryId) {
                return next
            }
        }

        for category in CategoryID.allCases {
            let lessons = lessonStore.lessons(for: category)
            if let first = lessons.first(where: { !progressStore.isLessonCompleted($0.id) }) {
                return first
            }
        }

        return lessonStore.lessons(for: .constitution).first
    }
}

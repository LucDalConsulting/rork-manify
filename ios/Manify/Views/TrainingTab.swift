import SwiftUI

struct TrainingTab: View {
    @Environment(LessonStore.self) private var lessonStore
    @Environment(ProgressStore.self) private var progressStore
    @Environment(MembershipService.self) private var membership
    @State private var showPaywall: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    if let currentLesson = findCurrentLesson() {
                        currentLessonCard(currentLesson)
                    }

                    courseLibrary
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 32)
            }
            .background(ManifyTheme.bg.ignoresSafeArea())
            .navigationTitle("Training")
            .navigationBarTitleDisplayMode(.large)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationDestination(for: CategoryID.self) { category in
                CategoryScreen(category: category)
            }
            .navigationDestination(for: Lesson.self) { lesson in
                LessonScreen(lesson: lesson)
            }
            .sheet(isPresented: $showPaywall) {
                PaywallScreen()
            }
        }
    }

    private func currentLessonCard(_ lesson: Lesson) -> some View {
        NavigationLink(value: lesson) {
            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    Text("RESUME TRAINING")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                        .tracking(1.2)

                    Spacer()

                    Image(systemName: "arrow.right.circle.fill")
                        .font(.title2)
                        .foregroundStyle(ManifyTheme.gold)
                }

                HStack(spacing: 12) {
                    Image(systemName: lesson.categoryId.icon)
                        .font(.title)
                        .foregroundStyle(lesson.categoryId.accentColor)
                        .frame(width: 48, height: 48)
                        .background(lesson.categoryId.accentColor.opacity(0.15))
                        .clipShape(.rect(cornerRadius: 12))

                    VStack(alignment: .leading, spacing: 4) {
                        Text(lesson.title)
                            .font(.headline)
                            .foregroundStyle(ManifyTheme.textPrimary)
                            .lineLimit(1)

                        HStack(spacing: 8) {
                            Text(lesson.categoryId.displayName)
                            Text("•")
                            Text("Lesson \(lesson.lessonNumber)")
                            Text("•")
                            Text("\(lesson.estimatedMinutes) min")
                        }
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
            .padding(16)
            .background(
                LinearGradient(
                    colors: [ManifyTheme.panelLight, ManifyTheme.panel],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(ManifyTheme.gold.opacity(0.3), lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 16))
        }
        .buttonStyle(.plain)
    }

    private var courseLibrary: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("COURSE LIBRARY")
                .font(.caption.weight(.bold))
                .foregroundStyle(ManifyTheme.textSecondary)
                .tracking(1.2)

            ForEach(CategoryID.allCases) { category in
                let lessons = lessonStore.lessons(for: category)
                let completed = lessons.filter { progressStore.isLessonCompleted($0.id) }.count
                let mastery = progressStore.categoryMastery(for: category, lessons: lessons)
                let dailyCount = progressStore.dailyCompletionCount(for: category)
                let atLimit = !membership.isPremium && dailyCount >= 1

                NavigationLink(value: category) {
                    HStack(spacing: 14) {
                        Image(systemName: category.icon)
                            .font(.title2)
                            .foregroundStyle(category.accentColor)
                            .frame(width: 48, height: 48)
                            .background(category.accentColor.opacity(0.12))
                            .clipShape(.rect(cornerRadius: 12))

                        VStack(alignment: .leading, spacing: 6) {
                            Text(category.displayName)
                                .font(.headline)
                                .foregroundStyle(ManifyTheme.textPrimary)

                            Text(category.subtitle)
                                .font(.caption)
                                .foregroundStyle(ManifyTheme.textSecondary)
                                .lineLimit(1)

                            HStack(spacing: 4) {
                                Text("\(completed)/\(lessons.count) lessons")
                                    .font(.caption2)
                                    .foregroundStyle(ManifyTheme.textSecondary)

                                if mastery > 0 {
                                    Text("•")
                                        .font(.caption2)
                                        .foregroundStyle(ManifyTheme.textSecondary)
                                    Text("\(Int(mastery * 100))%")
                                        .font(.caption2.weight(.bold))
                                        .foregroundStyle(category.accentColor)
                                }

                                if atLimit {
                                    Text("•")
                                        .font(.caption2)
                                        .foregroundStyle(ManifyTheme.textSecondary)
                                    Text("Daily limit reached")
                                        .font(.caption2.weight(.medium))
                                        .foregroundStyle(ManifyTheme.warning)
                                }
                            }
                        }

                        Spacer()

                        Image(systemName: "chevron.right")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                    .padding(14)
                    .background(ManifyTheme.panel)
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.white.opacity(0.04), lineWidth: 1)
                    )
                    .clipShape(.rect(cornerRadius: 14))
                }
                .buttonStyle(.plain)
            }

            if !membership.isPremium {
                Button {
                    showPaywall = true
                } label: {
                    HStack(spacing: 10) {
                        Image(systemName: "lock.open.fill")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.gold)

                        Text("Unlock unlimited access")
                            .font(.caption.weight(.medium))
                            .foregroundStyle(ManifyTheme.gold)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .background(ManifyTheme.gold.opacity(0.06))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(ManifyTheme.gold.opacity(0.15), lineWidth: 1)
                    )
                    .clipShape(.rect(cornerRadius: 10))
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

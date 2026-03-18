import SwiftUI

struct HomeScreen: View {
    @Environment(LessonStore.self) private var lessonStore
    @Environment(ProgressStore.self) private var progressStore
    @Environment(MembershipService.self) private var membership
    @State private var showPaywall: Bool = false

    private let streakMessages = [
        "Hold the line.",
        "Do not break your streak.",
        "One lesson. Stay sharp.",
        "Discipline compounds.",
        "A real man trains daily.",
        "You came too far to miss today.",
        "Five minutes. Keep the streak alive.",
        "Stay dangerous. Train today.",
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    header
                    streakBar
                    todayStatus
                    continueCard
                    membershipUpsell
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
            .sheet(isPresented: $showPaywall) {
                PaywallScreen()
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

                Text("Become a Real Man")
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
            statItem(value: "\(progressStore.restDaysAvailable)", label: "Rest Days", icon: "bed.double.fill", color: .blue)
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
    private var todayStatus: some View {
        if progressStore.hasTrainedToday {
            HStack(spacing: 10) {
                Image(systemName: "checkmark.shield.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.success)

                Text("Streak secured for today.")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.success)

                Spacer()
            }
            .padding(14)
            .background(ManifyTheme.success.opacity(0.08))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(ManifyTheme.success.opacity(0.2), lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 12))
        } else {
            HStack(spacing: 10) {
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.warning)

                VStack(alignment: .leading, spacing: 2) {
                    Text("Complete Today's Lesson")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Text(streakMessages.randomElement() ?? "Stay sharp.")
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                Spacer()
            }
            .padding(14)
            .background(ManifyTheme.warning.opacity(0.08))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(ManifyTheme.warning.opacity(0.2), lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 12))
        }
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

    @ViewBuilder
    private var membershipUpsell: some View {
        if !membership.isPremium {
            Button {
                showPaywall = true
            } label: {
                HStack(spacing: 12) {
                    Image(systemName: "shield.checkered")
                        .font(.title3)
                        .foregroundStyle(ManifyTheme.gold)

                    VStack(alignment: .leading, spacing: 2) {
                        Text("Train Without Limits")
                            .font(.subheadline.weight(.semibold))
                            .foregroundStyle(ManifyTheme.textPrimary)

                        Text("Unlock full access — $10 one-time")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }

                    Spacer()

                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.gold)
                }
                .padding(14)
                .background(ManifyTheme.gold.opacity(0.06))
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(ManifyTheme.gold.opacity(0.2), lineWidth: 1)
                )
                .clipShape(.rect(cornerRadius: 14))
            }
            .buttonStyle(.plain)
        }
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

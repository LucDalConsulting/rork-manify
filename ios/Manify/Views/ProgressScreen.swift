import SwiftUI

struct ProgressScreen: View {
    @Environment(LessonStore.self) private var lessonStore
    @Environment(ProgressStore.self) private var progressStore

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    rankCard
                    disciplineCard
                    streakCard
                    masteryGrid
                    statsCard
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 32)
            }
            .background(ManifyTheme.bg.ignoresSafeArea())
            .navigationTitle("Progress")
            .navigationBarTitleDisplayMode(.large)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }

    private var rankCard: some View {
        RankBadge(rank: progressStore.currentRank, totalXP: progressStore.totalXP)
    }

    private var disciplineCard: some View {
        VStack(spacing: 16) {
            HStack {
                Text("DISCIPLINE INDEX")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(ManifyTheme.gold)
                    .tracking(1.2)
                Spacer()
            }

            HStack(spacing: 20) {
                MasteryRing(
                    progress: Double(progressStore.disciplineIndex()) / 100.0,
                    color: ManifyTheme.gold,
                    size: 80,
                    lineWidth: 6
                )

                VStack(alignment: .leading, spacing: 8) {
                    indexRow(label: "Streak Strength", value: 40, weight: "40%")
                    indexRow(label: "Quiz Average", value: 30, weight: "30%")
                    indexRow(label: "Weekly Consistency", value: 20, weight: "20%")
                    indexRow(label: "Flashcard Review", value: 10, weight: "10%")
                }
            }
        }
        .padding(16)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white.opacity(0.06), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 16))
    }

    private func indexRow(label: String, value: Int, weight: String) -> some View {
        HStack {
            Text(label)
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)
            Spacer()
            Text(weight)
                .font(.caption.weight(.semibold))
                .foregroundStyle(ManifyTheme.textPrimary)
        }
    }

    private var streakCard: some View {
        HStack(spacing: 0) {
            streakStat(value: "\(progressStore.currentStreak)", label: "Current\nStreak", icon: "flame.fill", color: ManifyTheme.warning)

            Rectangle()
                .fill(Color.white.opacity(0.06))
                .frame(width: 1)
                .padding(.vertical, 12)

            streakStat(value: "\(progressStore.longestStreak)", label: "Longest\nStreak", icon: "trophy.fill", color: ManifyTheme.gold)

            Rectangle()
                .fill(Color.white.opacity(0.06))
                .frame(width: 1)
                .padding(.vertical, 12)

            streakStat(value: "\(progressStore.quizAverage)%", label: "Quiz\nAverage", icon: "chart.bar.fill", color: ManifyTheme.success)
        }
        .padding(.vertical, 16)
        .background(ManifyTheme.panel)
        .clipShape(.rect(cornerRadius: 16))
    }

    private func streakStat(value: String, label: String, icon: String, color: Color) -> some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(color)

            Text(value)
                .font(.title2.weight(.bold))
                .foregroundStyle(ManifyTheme.textPrimary)

            Text(label)
                .font(.caption2)
                .foregroundStyle(ManifyTheme.textSecondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
    }

    private var masteryGrid: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("CATEGORY MASTERY")
                .font(.caption.weight(.bold))
                .foregroundStyle(ManifyTheme.textSecondary)
                .tracking(1.2)

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 14) {
                ForEach(CategoryID.allCases) { category in
                    let lessons = lessonStore.lessons(for: category)
                    let mastery = progressStore.categoryMastery(for: category, lessons: lessons)

                    VStack(spacing: 10) {
                        MasteryRing(
                            progress: mastery,
                            color: category.accentColor,
                            size: 50,
                            lineWidth: 4
                        )

                        Text(category.displayName)
                            .font(.caption2.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(ManifyTheme.panel)
                    .clipShape(.rect(cornerRadius: 12))
                }
            }
        }
    }

    private var statsCard: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("STATS")
                .font(.caption.weight(.bold))
                .foregroundStyle(ManifyTheme.textSecondary)
                .tracking(1.2)

            VStack(spacing: 0) {
                statRow(label: "Lessons Completed", value: "\(progressStore.completedLessonCount)")
                Divider().background(Color.white.opacity(0.06))
                statRow(label: "Total XP", value: "\(progressStore.totalXP)")
                Divider().background(Color.white.opacity(0.06))
                statRow(label: "Flashcards Due", value: "\(progressStore.flashcardsDueCount)")
                Divider().background(Color.white.opacity(0.06))
                statRow(label: "Current Rank", value: progressStore.currentRank.displayName)
            }
            .background(ManifyTheme.panel)
            .clipShape(.rect(cornerRadius: 14))
        }
    }

    private func statRow(label: String, value: String) -> some View {
        HStack {
            Text(label)
                .font(.subheadline)
                .foregroundStyle(ManifyTheme.textSecondary)
            Spacer()
            Text(value)
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(ManifyTheme.textPrimary)
        }
        .padding(14)
    }
}

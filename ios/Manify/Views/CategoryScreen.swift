import SwiftUI

struct CategoryScreen: View {
    let category: CategoryID
    @Environment(LessonStore.self) private var lessonStore
    @Environment(ProgressStore.self) private var progressStore

    private var lessons: [Lesson] {
        lessonStore.lessons(for: category)
    }

    private var tiers: [Int] {
        Array(Set(lessons.map(\.tier))).sorted()
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                categoryHeader
                tierSections
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 32)
        }
        .background(ManifyTheme.bg.ignoresSafeArea())
        .navigationTitle(category.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }

    private var categoryHeader: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                Image(systemName: category.icon)
                    .font(.system(size: 36))
                    .foregroundStyle(category.accentColor)
                    .frame(width: 64, height: 64)
                    .background(category.accentColor.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 16))

                VStack(alignment: .leading, spacing: 6) {
                    Text(category.displayName)
                        .font(.title2.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Text(category.subtitle)
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                Spacer()

                MasteryRing(
                    progress: progressStore.categoryMastery(for: category, lessons: lessons),
                    color: category.accentColor,
                    size: 56,
                    lineWidth: 4
                )
            }

            HStack(spacing: 16) {
                statsChip(
                    value: "\(lessons.count)",
                    label: "Lessons",
                    icon: "book.fill"
                )
                statsChip(
                    value: "\(lessons.filter { progressStore.isLessonCompleted($0.id) }.count)",
                    label: "Completed",
                    icon: "checkmark.circle.fill"
                )
                statsChip(
                    value: "Tier \(currentTier)",
                    label: "Current",
                    icon: "shield.fill"
                )
            }
        }
        .padding(16)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(category.accentColor.opacity(0.2), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 16))
    }

    private var currentTier: Int {
        for tier in tiers.reversed() {
            if progressStore.isTierUnlocked(tier: tier, category: category, allLessons: lessons) {
                return tier
            }
        }
        return 1
    }

    private func statsChip(value: String, label: String, icon: String) -> some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.caption)
                .foregroundStyle(category.accentColor)
            Text(value)
                .font(.subheadline.weight(.bold))
                .foregroundStyle(ManifyTheme.textPrimary)
            Text(label)
                .font(.caption2)
                .foregroundStyle(ManifyTheme.textSecondary)
        }
        .frame(maxWidth: .infinity)
    }

    private var tierSections: some View {
        ForEach(tiers, id: \.self) { tier in
            let unlocked = progressStore.isTierUnlocked(tier: tier, category: category, allLessons: lessons)

            VStack(alignment: .leading, spacing: 12) {
                tierHeader(tier: tier, unlocked: unlocked)

                if unlocked {
                    ForEach(lessons.filter { $0.tier == tier }) { lesson in
                        let isAvailable = isLessonAvailable(lesson)
                        if isAvailable {
                            NavigationLink(value: lesson) {
                                LessonRow(
                                    lesson: lesson,
                                    progress: progressStore.progress(for: lesson.id),
                                    isAvailable: true
                                )
                            }
                            .buttonStyle(.plain)
                        } else {
                            LessonRow(
                                lesson: lesson,
                                progress: progressStore.progress(for: lesson.id),
                                isAvailable: false
                            )
                        }
                    }
                } else {
                    tierLockedCard(tier: tier)
                }
            }
        }
    }

    private func tierHeader(tier: Int, unlocked: Bool) -> some View {
        HStack {
            HStack(spacing: 6) {
                Image(systemName: unlocked ? "lock.open.fill" : "lock.fill")
                    .font(.caption2)
                    .foregroundStyle(unlocked ? ManifyTheme.gold : ManifyTheme.textSecondary)

                Text("TIER \(tier)")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(unlocked ? ManifyTheme.gold : ManifyTheme.textSecondary)
                    .tracking(1.2)
            }

            Text(tierLabel(tier))
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)

            Spacer()

            if unlocked {
                let tierLessons = lessons.filter { $0.tier == tier }
                let completed = tierLessons.filter { progressStore.isLessonCompleted($0.id) }.count
                Text("\(completed)/\(tierLessons.count)")
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(ManifyTheme.textSecondary)
            }
        }
    }

    private func tierLockedCard(tier: Int) -> some View {
        let previousTier = tier - 1
        let prog = progressStore.tierProgress(tier: previousTier, category: category, allLessons: lessons)
        let requiredCompletion = tier == 2 ? 80 : 90
        let requiredScore = tier == 2 ? 80 : 85
        let completionPct = prog.total > 0 ? (prog.completed * 100) / prog.total : 0

        return VStack(spacing: 12) {
            Image(systemName: "lock.shield.fill")
                .font(.title2)
                .foregroundStyle(ManifyTheme.textSecondary.opacity(0.5))

            Text("Complete Tier \(previousTier) to Unlock")
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(ManifyTheme.textPrimary)

            VStack(alignment: .leading, spacing: 8) {
                unlockRequirement(
                    label: "Tier \(previousTier) completion",
                    current: completionPct,
                    required: requiredCompletion,
                    suffix: "%",
                    met: completionPct >= requiredCompletion
                )
                unlockRequirement(
                    label: "Quiz average",
                    current: prog.avgScore,
                    required: requiredScore,
                    suffix: "%",
                    met: prog.avgScore >= requiredScore
                )
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(ManifyTheme.panel.opacity(0.6))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.white.opacity(0.04), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 14))
    }

    private func unlockRequirement(label: String, current: Int, required: Int, suffix: String, met: Bool) -> some View {
        HStack(spacing: 8) {
            Image(systemName: met ? "checkmark.circle.fill" : "circle")
                .font(.caption)
                .foregroundStyle(met ? ManifyTheme.success : ManifyTheme.textSecondary)

            Text(label)
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)

            Spacer()

            Text("\(current)\(suffix) / \(required)\(suffix)")
                .font(.caption.weight(.semibold))
                .foregroundStyle(met ? ManifyTheme.success : ManifyTheme.warning)
        }
    }

    private func tierLabel(_ tier: Int) -> String {
        if category == .sharks {
            switch tier {
            case 1: "Basics & Legend"
            case 2: "Anatomy, Species & Myth"
            default: ""
            }
        } else {
            switch tier {
            case 1: "Structural Awareness"
            case 2: "Operational Competence"
            case 3: "Diagnostic Thinking"
            default: ""
            }
        }
    }

    private func isLessonAvailable(_ lesson: Lesson) -> Bool {
        if lesson.lessonNumber == 1 && lesson.tier == 1 { return true }

        if !progressStore.isTierUnlocked(tier: lesson.tier, category: category, allLessons: lessons) {
            return false
        }

        if lesson.lessonNumber == 1 { return true }

        let tierLessons = lessons.filter { $0.tier == lesson.tier }
        if let prevLesson = tierLessons.first(where: { $0.lessonNumber == lesson.lessonNumber - 1 }) {
            return progressStore.isLessonCompleted(prevLesson.id) || progressStore.hasReadLesson(prevLesson.id)
        }

        for prereq in lesson.prerequisites {
            if !progressStore.isLessonCompleted(prereq) && !progressStore.hasReadLesson(prereq) {
                return false
            }
        }
        return true
    }
}

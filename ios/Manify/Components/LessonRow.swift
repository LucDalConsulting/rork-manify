import SwiftUI

struct LessonRow: View {
    let lesson: Lesson
    let progress: LessonProgress
    let isAvailable: Bool

    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                Circle()
                    .fill(statusColor.opacity(0.15))
                    .frame(width: 40, height: 40)

                if progress.isCompleted {
                    Image(systemName: "checkmark")
                        .font(.subheadline.weight(.bold))
                        .foregroundStyle(ManifyTheme.success)
                } else if isAvailable {
                    Text("\(lesson.lessonNumber)")
                        .font(.subheadline.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)
                } else {
                    Image(systemName: "lock.fill")
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(lesson.title)
                    .font(.subheadline.weight(.medium))
                    .foregroundStyle(isAvailable ? ManifyTheme.textPrimary : ManifyTheme.textSecondary)
                    .lineLimit(1)

                HStack(spacing: 8) {
                    Label("\(lesson.estimatedMinutes) min", systemImage: "clock")

                    difficultyDots

                    if progress.bestScore > 0 {
                        Text("\(progress.bestScore)%")
                            .foregroundStyle(progress.bestScore >= 80 ? ManifyTheme.success : ManifyTheme.warning)
                    }
                }
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)
            }

            Spacer()

            if isAvailable && !progress.isCompleted {
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.textSecondary)
            }
        }
        .padding(14)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.white.opacity(0.04), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 12))
        .opacity(isAvailable ? 1 : 0.5)
    }

    private var statusColor: Color {
        if progress.isCompleted { return ManifyTheme.success }
        if isAvailable { return ManifyTheme.gold }
        return ManifyTheme.textSecondary
    }

    private var difficultyDots: some View {
        HStack(spacing: 3) {
            ForEach(1...3, id: \.self) { level in
                Circle()
                    .fill(level <= lesson.difficulty ? ManifyTheme.gold : Color.white.opacity(0.1))
                    .frame(width: 5, height: 5)
            }
        }
    }
}

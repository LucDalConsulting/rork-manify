import SwiftUI

struct ContinueTrainingCard: View {
    let lesson: Lesson?
    let progress: LessonProgress?

    var body: some View {
        if let lesson {
            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    Text("CONTINUE TRAINING")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                        .tracking(1.2)

                    Spacer()

                    Text("Tier \(lesson.tier)")
                        .font(.caption2.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textSecondary)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 3)
                        .background(Color.white.opacity(0.08))
                        .clipShape(Capsule())
                }

                HStack(spacing: 12) {
                    Image(systemName: lesson.categoryId.icon)
                        .font(.title)
                        .foregroundStyle(lesson.categoryId.accentColor)
                        .frame(width: 44, height: 44)
                        .background(lesson.categoryId.accentColor.opacity(0.15))
                        .clipShape(.rect(cornerRadius: 10))

                    VStack(alignment: .leading, spacing: 4) {
                        Text(lesson.title)
                            .font(.headline)
                            .foregroundStyle(ManifyTheme.textPrimary)
                            .lineLimit(1)

                        HStack(spacing: 8) {
                            Label("Lesson \(lesson.lessonNumber)", systemImage: "book.fill")
                            Label("\(lesson.estimatedMinutes) min", systemImage: "clock.fill")
                        }
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }

                if let progress, progress.hasReadLesson {
                    HStack(spacing: 8) {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundStyle(ManifyTheme.success)
                        Text("Lesson read")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)

                        if progress.bestScore > 0 {
                            Text("•")
                                .foregroundStyle(ManifyTheme.textSecondary)
                            Text("Best: \(progress.bestScore)%")
                                .font(.caption.weight(.semibold))
                                .foregroundStyle(progress.bestScore >= 80 ? ManifyTheme.success : ManifyTheme.warning)
                        }
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
    }
}

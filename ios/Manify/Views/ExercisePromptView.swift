import SwiftUI

struct ExercisePromptView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(ProgressStore.self) private var progressStore

    private let exercises = [
        ("10 Pushups", "figure.strengthtraining.traditional"),
        ("30 Jumping Jacks", "figure.jumprope"),
        ("20 Squats", "figure.squat"),
        ("15 Lunges", "figure.walk"),
        ("30 Second Plank", "figure.core.training"),
    ]

    @State private var currentExercise: (String, String) = ("", "")

    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Spacer()

                Image(systemName: currentExercise.1)
                    .font(.system(size: 64))
                    .foregroundStyle(ManifyTheme.gold)

                VStack(spacing: 8) {
                    Text("QUICK PHYSICAL CHALLENGE")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                        .tracking(1.5)

                    Text(currentExercise.0)
                        .font(.title.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Text("Stay sharp. Stay strong.")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                Text("Complete 3 exercises to earn a rest day")
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .padding(.horizontal, 32)
                    .multilineTextAlignment(.center)

                Spacer()

                VStack(spacing: 12) {
                    Button {
                        progressStore.recordExerciseCompleted()
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                            Text("Done")
                        }
                        .font(.headline)
                        .foregroundStyle(ManifyTheme.bg)
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(ManifyTheme.goldGradient)
                        .clipShape(.rect(cornerRadius: 14))
                    }
                    .sensoryFeedback(.success, trigger: false)

                    Button {
                        dismiss()
                    } label: {
                        Text("Skip")
                            .font(.subheadline.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                            .frame(maxWidth: .infinity)
                            .padding(14)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 16)
            }
            .background(ManifyTheme.bg.ignoresSafeArea())
            .onAppear {
                currentExercise = exercises.randomElement() ?? exercises[0]
            }
        }
        .presentationDetents([.medium])
    }
}

import SwiftUI

struct FlashcardsScreen: View {
    let lesson: Lesson
    @Environment(\.dismiss) private var dismiss
    @Environment(ProgressStore.self) private var progressStore

    @State private var currentIndex: Int = 0
    @State private var isFlipped: Bool = false
    @State private var dragOffset: CGFloat = 0
    @State private var completedCount: Int = 0

    private var flashcards: [Flashcard] { lesson.flashcards }
    private var currentCard: Flashcard? {
        guard currentIndex < flashcards.count else { return nil }
        return flashcards[currentIndex]
    }

    var body: some View {
        NavigationStack {
            ZStack {
                ManifyTheme.bg.ignoresSafeArea()

                if currentIndex >= flashcards.count {
                    completionView
                } else {
                    cardView
                }
            }
            .navigationTitle("Flashcards")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Close") { dismiss() }
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Text("\(currentIndex + 1)/\(flashcards.count)")
                        .font(.caption.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
            }
        }
    }

    private var cardView: some View {
        VStack(spacing: 28) {
            progressDots

            if let card = currentCard {
                flashcardBody(card)
            }

            HStack(spacing: 40) {
                Button {
                    nextCard()
                } label: {
                    VStack(spacing: 6) {
                        Image(systemName: "arrow.right.circle.fill")
                            .font(.system(size: 44))
                            .foregroundStyle(ManifyTheme.gold)
                        Text("Next")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }

            Text("Tap card to flip")
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary.opacity(0.6))
        }
        .padding(16)
    }

    private var progressDots: some View {
        HStack(spacing: 4) {
            ForEach(0..<flashcards.count, id: \.self) { index in
                Circle()
                    .fill(index <= currentIndex ? ManifyTheme.gold : Color.white.opacity(0.12))
                    .frame(width: index == currentIndex ? 8 : 6, height: index == currentIndex ? 8 : 6)
                    .animation(.spring(duration: 0.3), value: currentIndex)
            }
        }
    }

    private func flashcardBody(_ card: Flashcard) -> some View {
        Button {
            withAnimation(.spring(duration: 0.4)) {
                isFlipped.toggle()
            }
        } label: {
            ZStack {
                if !isFlipped {
                    frontFace(card)
                } else {
                    backFace(card)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 320)
            .background(ManifyTheme.panel)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(isFlipped ? ManifyTheme.gold.opacity(0.3) : Color.white.opacity(0.08), lineWidth: 1.5)
            )
            .clipShape(.rect(cornerRadius: 20))
            .rotation3DEffect(
                .degrees(isFlipped ? 180 : 0),
                axis: (x: 0, y: 1, z: 0),
                perspective: 0.5
            )
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.impact(weight: .light), trigger: isFlipped)
    }

    private func frontFace(_ card: Flashcard) -> some View {
        VStack(spacing: 16) {
            Text("TERM")
                .font(.caption.weight(.bold))
                .foregroundStyle(ManifyTheme.gold)
                .tracking(1.5)

            Text(card.front)
                .font(.title2.weight(.bold))
                .foregroundStyle(ManifyTheme.textPrimary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
        }
    }

    private func backFace(_ card: Flashcard) -> some View {
        VStack(spacing: 16) {
            Text("DEFINITION")
                .font(.caption.weight(.bold))
                .foregroundStyle(ManifyTheme.gold)
                .tracking(1.5)

            Text(card.back)
                .font(.body)
                .foregroundStyle(ManifyTheme.textPrimary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            if !card.tags.isEmpty {
                HStack(spacing: 6) {
                    ForEach(card.tags, id: \.self) { tag in
                        Text(tag)
                            .font(.caption2)
                            .foregroundStyle(ManifyTheme.textSecondary)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 3)
                            .background(Color.white.opacity(0.06))
                            .clipShape(Capsule())
                    }
                }
            }
        }
        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
    }

    private func nextCard() {
        completedCount += 1
        withAnimation(.spring(duration: 0.3)) {
            isFlipped = false
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
            if currentIndex < flashcards.count - 1 {
                currentIndex += 1
            } else {
                currentIndex = flashcards.count
                progressStore.markFlashcardsCompleted(
                    lessonId: lesson.id,
                    flashcardIds: flashcards.map(\.id)
                )
            }
        }
    }

    private var completionView: some View {
        VStack(spacing: 24) {
            Image(systemName: "rectangle.stack.badge.checkmark")
                .font(.system(size: 56))
                .foregroundStyle(ManifyTheme.success)

            VStack(spacing: 8) {
                Text("Flashcards Complete")
                    .font(.title2.weight(.bold))
                    .foregroundStyle(ManifyTheme.textPrimary)

                Text("\(flashcards.count) cards reviewed")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
            }

            Text("+10 XP")
                .font(.title3.weight(.bold))
                .foregroundStyle(ManifyTheme.gold)

            Button {
                dismiss()
            } label: {
                Text("Done")
                    .font(.headline)
                    .foregroundStyle(ManifyTheme.bg)
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 14))
            }
            .padding(.horizontal, 40)
        }
    }
}

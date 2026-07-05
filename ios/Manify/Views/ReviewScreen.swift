import SwiftUI

/// "Enjoying Manify?" — the user-initiated review entry point (My Account → Leave a
/// Review). Fully App Store-compliant: every user gets the SAME two options, and
/// nothing is gated on sentiment —
///   • "Rate on the App Store" → opens Manify's write-review page (available to all).
///   • "Send us feedback"     → a private note captured on-device (available to all).
///
/// The automatic milestone prompt (1st/5th/10th lesson) uses Apple's native
/// `requestReview` over in `ContentView`; this screen is only the manual path.
struct ReviewScreen: View {
    @Environment(ReviewManager.self) private var reviewManager
    @Environment(\.openURL) private var openURL
    @Environment(\.dismiss) private var dismiss

    @State private var phase: Phase = .choice
    @State private var rating: Int = 0
    @State private var note: String = ""

    private enum Phase { case choice, feedback, thanks }

    private var feedbackIsEmpty: Bool {
        rating == 0 && note.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                Group {
                    switch phase {
                    case .choice: choiceContent
                    case .feedback: feedbackContent
                    case .thanks: thanksContent
                    }
                }
                .padding(.horizontal, 24)
                .padding(.top, 12)
                .frame(maxWidth: .infinity)
            }
            .background(ManifyTheme.bg.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button { dismiss() } label: {
                        Image(systemName: "xmark")
                            .font(.subheadline.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }

    // MARK: - Choice

    private var choiceContent: some View {
        VStack(spacing: 22) {
            VStack(spacing: 10) {
                Image(systemName: "star.circle.fill")
                    .font(.system(size: 56))
                    .foregroundStyle(ManifyTheme.goldGradient)

                Text("Enjoying Manify?")
                    .font(.title2.weight(.bold))
                    .foregroundStyle(ManifyTheme.textPrimary)

                Text("A quick App Store review helps other men find Manify. Or tell us how we can make it better — we read everything.")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 24)

            VStack(spacing: 12) {
                Button {
                    openURL(ReviewManager.writeReviewURL)
                    reviewManager.markFlowEntered()
                    dismiss()
                } label: {
                    Text("Rate on the App Store")
                        .font(.headline.weight(.bold))
                        .foregroundStyle(ManifyTheme.bg)
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(ManifyTheme.goldGradient)
                        .clipShape(.rect(cornerRadius: 14))
                }

                Button {
                    phase = .feedback
                } label: {
                    Text("Send us feedback")
                        .font(.headline.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textPrimary)
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(ManifyTheme.panel)
                        .clipShape(.rect(cornerRadius: 14))
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.white.opacity(0.08), lineWidth: 1)
                        )
                }
            }
            .padding(.top, 8)
        }
    }

    // MARK: - Feedback

    private var feedbackContent: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("How are you liking Manify so far?")
                    .font(.title3.weight(.bold))
                    .foregroundStyle(ManifyTheme.textPrimary)
                    .multilineTextAlignment(.center)

                Text("Your feedback comes straight to us and helps make Manify better.")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 16)

            starSelector

            noteField

            Button {
                reviewManager.saveFeedbackNote(stars: rating, note: note)
                phase = .thanks
            } label: {
                Text("Send feedback")
                    .font(.headline.weight(.bold))
                    .foregroundStyle(ManifyTheme.bg)
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 14))
            }
            .disabled(feedbackIsEmpty)
            .opacity(feedbackIsEmpty ? 0.5 : 1)
        }
    }

    private var starSelector: some View {
        HStack(spacing: 10) {
            ForEach(1...5, id: \.self) { i in
                Button {
                    rating = i
                } label: {
                    Image(systemName: i <= rating ? "star.fill" : "star")
                        .font(.system(size: 32))
                        .foregroundStyle(i <= rating ? ManifyTheme.gold : ManifyTheme.textSecondary)
                        .frame(width: 44, height: 44)
                        .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .accessibilityLabel("Rate \(i) star\(i == 1 ? "" : "s")")
            }
        }
        .sensoryFeedback(.selection, trigger: rating)
    }

    private var noteField: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Anything you'd like to add? (optional)")
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)

            TextEditor(text: $note)
                .scrollContentBackground(.hidden)
                .frame(minHeight: 110)
                .padding(10)
                .foregroundStyle(ManifyTheme.textPrimary)
                .tint(ManifyTheme.gold)
                .background(ManifyTheme.panel)
                .clipShape(.rect(cornerRadius: 12))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.06), lineWidth: 1)
                )
        }
    }

    // MARK: - Thanks

    private var thanksContent: some View {
        VStack(spacing: 18) {
            Spacer(minLength: 40)

            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 60))
                .foregroundStyle(ManifyTheme.goldGradient)

            Text("Thank you — we hear you.")
                .font(.title2.weight(.bold))
                .foregroundStyle(ManifyTheme.textPrimary)
                .multilineTextAlignment(.center)

            Text("Your feedback goes straight to us and helps make Manify better. We're on it.")
                .font(.subheadline)
                .foregroundStyle(ManifyTheme.textSecondary)
                .multilineTextAlignment(.center)

            Button {
                dismiss()
            } label: {
                Text("Done")
                    .font(.headline.weight(.bold))
                    .foregroundStyle(ManifyTheme.bg)
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 14))
            }
            .padding(.top, 8)
        }
    }
}

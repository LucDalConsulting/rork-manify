import SwiftUI

/// Owns the state for the in-app review flow: which lesson-completion milestones
/// auto-prompt, whether the user has already been sent to rate, and any private
/// feedback notes.
///
/// No app can post a review to the App Store directly (Apple owns that). At the
/// milestones, `ContentView` calls Apple's native `requestReview`; the manual
/// `ReviewScreen` lets any user either rate on the App Store or send private
/// feedback — the same options for everyone, never gated on the rating.
@Observable
@MainActor
final class ReviewManager {
    /// Completed-lesson totals at which the review sheet auto-presents, until the
    /// user has been through the flow once. (1st / 5th / 10th completed lesson.)
    static let autoPromptMilestones: Set<Int> = [1, 5, 10]

    /// App Store "write a review" deep link for Manify (App Store id 6760329399).
    static let writeReviewURL = URL(string: "https://apps.apple.com/app/id6760329399?action=write-review")!

    private let hasLeftReviewKey = "manify_has_left_review"
    private let lastPromptAtCountKey = "manify_last_review_prompt_at_count"
    private let feedbackNotesKey = "manify_private_review_notes"

    /// True once the user has submitted the review screen once (either path).
    /// When true, the app never auto-presents the prompt again.
    var hasLeftReview: Bool {
        get { UserDefaults.standard.bool(forKey: hasLeftReviewKey) }
        set { UserDefaults.standard.set(newValue, forKey: hasLeftReviewKey) }
    }

    /// The completed-lesson count at which we last auto-showed the prompt.
    /// Prevents re-presenting for the same milestone.
    private(set) var lastPromptShownAtCount: Int {
        get { UserDefaults.standard.integer(forKey: lastPromptAtCountKey) }
        set { UserDefaults.standard.set(newValue, forKey: lastPromptAtCountKey) }
    }

    /// Whether to auto-present the review sheet for the given running completed
    /// total. Fires when the user has crossed a milestone since we last prompted,
    /// hasn't been through the flow, and we haven't already prompted at this count.
    /// Crossing-based so a milestone is still caught if the count jumps past it.
    func shouldAutoPrompt(completedCount: Int) -> Bool {
        guard !hasLeftReview else { return false }
        guard completedCount != lastPromptShownAtCount else { return false }
        return Self.autoPromptMilestones.contains { milestone in
            milestone > lastPromptShownAtCount && milestone <= completedCount
        }
    }

    func recordPromptShown(atCount count: Int) {
        lastPromptShownAtCount = count
    }

    /// Call when the user chooses to rate on the App Store, so we stop auto-prompting.
    func markFlowEntered() {
        hasLeftReview = true
    }

    /// Persist a private feedback note locally.
    func saveFeedbackNote(stars: Int, note: String) {
        let trimmed = note.trimmingCharacters(in: .whitespacesAndNewlines)
        var notes = feedbackNotes()
        notes.append(PrivateFeedbackNote(stars: stars, note: trimmed, date: Date()))
        if let data = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(data, forKey: feedbackNotesKey)
        }
    }

    /// All private low-star notes captured on this device.
    func feedbackNotes() -> [PrivateFeedbackNote] {
        guard let data = UserDefaults.standard.data(forKey: feedbackNotesKey),
              let decoded = try? JSONDecoder().decode([PrivateFeedbackNote].self, from: data) else {
            return []
        }
        return decoded
    }
}

struct PrivateFeedbackNote: Codable, Identifiable, Sendable {
    var id = UUID()
    let stars: Int
    let note: String
    let date: Date
}

import SwiftUI

struct QuizScreen: View {
    let lesson: Lesson
    @Environment(\.dismiss) private var dismiss
    @Environment(ProgressStore.self) private var progressStore

    @State private var currentIndex: Int = 0
    @State private var selectedAnswer: Int? = nil
    @State private var hasAnswered: Bool = false
    @State private var correctCount: Int = 0
    @State private var isComplete: Bool = false
    @State private var answers: [Int?] = []

    private var questions: [Question] { lesson.quiz.questions }
    private var currentQuestion: Question? {
        guard currentIndex < questions.count else { return nil }
        return questions[currentIndex]
    }

    var body: some View {
        NavigationStack {
            ZStack {
                ManifyTheme.bg.ignoresSafeArea()

                if isComplete {
                    resultsView
                } else if let question = currentQuestion {
                    questionView(question)
                }
            }
            .navigationTitle("Lesson Quiz")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Close") { dismiss() }
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
            }
            .onAppear {
                answers = Array(repeating: nil, count: questions.count)
            }
        }
    }

    private func questionView(_ question: Question) -> some View {
        ScrollView {
            VStack(spacing: 24) {
                progressBar

                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Question \(currentIndex + 1) of \(questions.count)")
                            .font(.caption.weight(.bold))
                            .foregroundStyle(ManifyTheme.gold)
                            .tracking(1)

                        Spacer()

                        questionTypeBadge(question.type)
                    }

                    Text(question.prompt)
                        .font(.title3.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textPrimary)
                        .fixedSize(horizontal: false, vertical: true)
                }

                VStack(spacing: 10) {
                    ForEach(Array(question.choices.enumerated()), id: \.offset) { index, choice in
                        Button {
                            guard !hasAnswered else { return }
                            selectedAnswer = index
                            hasAnswered = true
                            answers[currentIndex] = index
                            if index == question.correctIndex {
                                correctCount += 1
                            }
                        } label: {
                            HStack(spacing: 12) {
                                choiceIndicator(index: index, correctIndex: question.correctIndex)

                                Text(choice)
                                    .font(.subheadline)
                                    .foregroundStyle(ManifyTheme.textPrimary)
                                    .multilineTextAlignment(.leading)

                                Spacer()
                            }
                            .padding(14)
                            .background(choiceBackground(index: index, correctIndex: question.correctIndex))
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(choiceBorder(index: index, correctIndex: question.correctIndex), lineWidth: 1.5)
                            )
                            .clipShape(.rect(cornerRadius: 12))
                        }
                        .disabled(hasAnswered)
                    }
                }

                if hasAnswered {
                    explanationCard(question)

                    Button {
                        nextQuestion()
                    } label: {
                        Text(currentIndex < questions.count - 1 ? "Next Question" : "See Results")
                            .font(.headline)
                            .foregroundStyle(ManifyTheme.bg)
                            .frame(maxWidth: .infinity)
                            .padding(16)
                            .background(ManifyTheme.goldGradient)
                            .clipShape(.rect(cornerRadius: 14))
                    }
                    .sensoryFeedback(.impact(weight: .light), trigger: currentIndex)
                }
            }
            .padding(16)
            .padding(.bottom, 32)
        }
    }

    private var progressBar: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.white.opacity(0.08))
                    .frame(height: 4)

                Capsule()
                    .fill(ManifyTheme.gold)
                    .frame(width: geo.size.width * (Double(currentIndex + 1) / Double(questions.count)), height: 4)
                    .animation(.spring(duration: 0.4), value: currentIndex)
            }
        }
        .frame(height: 4)
    }

    private func questionTypeBadge(_ type: QuestionType) -> some View {
        let label: String = switch type {
        case .multipleChoice: "MCQ"
        case .scenario: "Scenario"
        case .fillBlank: "Fill Blank"
        }
        return Text(label)
            .font(.caption2.weight(.semibold))
            .foregroundStyle(ManifyTheme.textSecondary)
            .padding(.horizontal, 8)
            .padding(.vertical, 3)
            .background(Color.white.opacity(0.08))
            .clipShape(Capsule())
    }

    private func choiceIndicator(index: Int, correctIndex: Int) -> some View {
        ZStack {
            Circle()
                .stroke(indicatorColor(index: index, correctIndex: correctIndex), lineWidth: 2)
                .frame(width: 24, height: 24)

            if hasAnswered && index == correctIndex {
                Image(systemName: "checkmark")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(ManifyTheme.success)
            } else if hasAnswered && index == selectedAnswer && index != correctIndex {
                Image(systemName: "xmark")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(ManifyTheme.danger)
            }
        }
    }

    private func indicatorColor(index: Int, correctIndex: Int) -> Color {
        guard hasAnswered else { return Color.white.opacity(0.2) }
        if index == correctIndex { return ManifyTheme.success }
        if index == selectedAnswer { return ManifyTheme.danger }
        return Color.white.opacity(0.08)
    }

    private func choiceBackground(index: Int, correctIndex: Int) -> Color {
        guard hasAnswered else { return ManifyTheme.panel }
        if index == correctIndex { return ManifyTheme.success.opacity(0.1) }
        if index == selectedAnswer { return ManifyTheme.danger.opacity(0.1) }
        return ManifyTheme.panel
    }

    private func choiceBorder(index: Int, correctIndex: Int) -> Color {
        guard hasAnswered else { return Color.white.opacity(0.06) }
        if index == correctIndex { return ManifyTheme.success.opacity(0.5) }
        if index == selectedAnswer { return ManifyTheme.danger.opacity(0.5) }
        return Color.white.opacity(0.04)
    }

    private func explanationCard(_ question: Question) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 6) {
                Image(systemName: selectedAnswer == question.correctIndex ? "checkmark.circle.fill" : "info.circle.fill")
                    .foregroundStyle(selectedAnswer == question.correctIndex ? ManifyTheme.success : ManifyTheme.warning)
                Text(selectedAnswer == question.correctIndex ? "Correct" : "Incorrect")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(selectedAnswer == question.correctIndex ? ManifyTheme.success : ManifyTheme.warning)
            }

            Text(question.explanation)
                .font(.subheadline)
                .foregroundStyle(ManifyTheme.textSecondary)
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(ManifyTheme.panelLight)
        .clipShape(.rect(cornerRadius: 12))
    }

    private func nextQuestion() {
        if currentIndex < questions.count - 1 {
            currentIndex += 1
            selectedAnswer = nil
            hasAnswered = false
        } else {
            progressStore.submitQuizScore(
                lessonId: lesson.id,
                score: correctCount,
                totalQuestions: questions.count
            )
            isComplete = true
        }
    }

    private var resultsView: some View {
        let percentage = questions.isEmpty ? 0 : (correctCount * 100) / questions.count
        let passed = percentage >= lesson.quiz.passPercent

        return ScrollView {
            VStack(spacing: 28) {
                Spacer().frame(height: 20)

                Image(systemName: passed ? "checkmark.seal.fill" : "arrow.counterclockwise.circle.fill")
                    .font(.system(size: 56))
                    .foregroundStyle(passed ? ManifyTheme.success : ManifyTheme.warning)

                VStack(spacing: 8) {
                    Text(passed ? "Quiz Passed" : "Not Quite")
                        .font(.title.weight(.bold))
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Text("\(correctCount)/\(questions.count) correct")
                        .font(.title3)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                MasteryRing(
                    progress: Double(percentage) / 100.0,
                    color: passed ? ManifyTheme.success : ManifyTheme.warning,
                    size: 100,
                    lineWidth: 8
                )

                if passed {
                    VStack(spacing: 4) {
                        Text("+\(xpEarned()) XP")
                            .font(.title2.weight(.bold))
                            .foregroundStyle(ManifyTheme.gold)
                        Text("Knowledge secured")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                } else {
                    Text("Score \(lesson.quiz.passPercent)% or higher to pass.")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                VStack(spacing: 12) {
                    Button {
                        resetQuiz()
                    } label: {
                        Text(passed ? "Retry for Better Score" : "Retry Quiz")
                            .font(.headline)
                            .foregroundStyle(passed ? ManifyTheme.textPrimary : ManifyTheme.bg)
                            .frame(maxWidth: .infinity)
                            .padding(16)
                            .background(passed ? ManifyTheme.panel : ManifyTheme.gold)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(passed ? ManifyTheme.gold.opacity(0.3) : Color.clear, lineWidth: 1)
                            )
                            .clipShape(.rect(cornerRadius: 14))
                    }

                    Button {
                        dismiss()
                    } label: {
                        Text("Done")
                            .font(.headline)
                            .foregroundStyle(passed ? ManifyTheme.bg : ManifyTheme.textPrimary)
                            .frame(maxWidth: .infinity)
                            .padding(16)
                            .background(passed ? ManifyTheme.goldGradient : ManifyTheme.panelGradient)
                            .clipShape(.rect(cornerRadius: 14))
                    }
                }
            }
            .padding(16)
            .padding(.bottom, 32)
        }
    }

    private func xpEarned() -> Int {
        let percentage = questions.isEmpty ? 0 : (correctCount * 100) / questions.count
        var xp = 30
        let existingProgress = progressStore.progress(for: lesson.id)
        if existingProgress.attempts <= 1 { xp += 10 }
        if percentage == 100 { xp += 10 }
        return xp
    }

    private func resetQuiz() {
        currentIndex = 0
        selectedAnswer = nil
        hasAnswered = false
        correctCount = 0
        isComplete = false
        answers = Array(repeating: nil, count: questions.count)
    }
}

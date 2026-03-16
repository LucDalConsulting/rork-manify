import SwiftUI

struct QuizScreen: View {
    let lesson: Lesson
    @Environment(\.dismiss) private var dismiss
    @Environment(ProgressStore.self) private var progressStore

    @State private var currentIndex: Int = 0
    @State private var selectedAnswer: Int? = nil
    @State private var selectedAnswers: Set<Int> = []
    @State private var fillBlankText: String = ""
    @State private var matchedPairs: [Int: Int] = [:]
    @State private var selectedLeftIndex: Int? = nil
    @State private var hasAnswered: Bool = false
    @State private var correctCount: Int = 0
    @State private var isComplete: Bool = false
    @State private var answers: [Int?] = []
    @State private var showExercisePrompt: Bool = false

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
            .sheet(isPresented: $showExercisePrompt) {
                ExercisePromptView()
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

                switch question.type {
                case .multipleChoice, .scenario:
                    multipleChoiceView(question)
                case .multiSelect:
                    multiSelectView(question)
                case .fillBlank:
                    fillBlankView(question)
                case .matching:
                    matchingView(question)
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

    private func multipleChoiceView(_ question: Question) -> some View {
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
    }

    private func multiSelectView(_ question: Question) -> some View {
        VStack(spacing: 10) {
            ForEach(Array(question.choices.enumerated()), id: \.offset) { index, choice in
                Button {
                    guard !hasAnswered else { return }
                    if selectedAnswers.contains(index) {
                        selectedAnswers.remove(index)
                    } else {
                        selectedAnswers.insert(index)
                    }
                } label: {
                    HStack(spacing: 12) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(multiSelectBorderColor(index: index, question: question), lineWidth: 2)
                                .frame(width: 22, height: 22)

                            if selectedAnswers.contains(index) {
                                if hasAnswered {
                                    Image(systemName: question.correctIndices.contains(index) ? "checkmark" : "xmark")
                                        .font(.caption.weight(.bold))
                                        .foregroundStyle(question.correctIndices.contains(index) ? ManifyTheme.success : ManifyTheme.danger)
                                } else {
                                    Image(systemName: "checkmark")
                                        .font(.caption.weight(.bold))
                                        .foregroundStyle(ManifyTheme.gold)
                                }
                            }
                        }

                        Text(choice)
                            .font(.subheadline)
                            .foregroundStyle(ManifyTheme.textPrimary)
                            .multilineTextAlignment(.leading)

                        Spacer()
                    }
                    .padding(14)
                    .background(multiSelectBackground(index: index, question: question))
                    .clipShape(.rect(cornerRadius: 12))
                }
                .disabled(hasAnswered)
            }

            if !hasAnswered && !selectedAnswers.isEmpty {
                Button {
                    hasAnswered = true
                    let isCorrect = selectedAnswers == Set(question.correctIndices)
                    if isCorrect { correctCount += 1 }
                } label: {
                    Text("Confirm Selection")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(ManifyTheme.bg)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(ManifyTheme.goldGradient)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
    }

    private func fillBlankView(_ question: Question) -> some View {
        VStack(spacing: 16) {
            TextField("Type your answer...", text: $fillBlankText)
                .textFieldStyle(.plain)
                .font(.title3)
                .foregroundStyle(ManifyTheme.textPrimary)
                .padding(16)
                .background(ManifyTheme.panel)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(hasAnswered ? (isFillBlankCorrect(question) ? ManifyTheme.success : ManifyTheme.danger) : ManifyTheme.gold.opacity(0.3), lineWidth: 1.5)
                )
                .clipShape(.rect(cornerRadius: 12))
                .disabled(hasAnswered)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)

            if hasAnswered {
                if !isFillBlankCorrect(question) {
                    HStack(spacing: 8) {
                        Image(systemName: "lightbulb.fill")
                            .foregroundStyle(ManifyTheme.warning)
                        Text("Accepted: \(question.acceptedAnswers.joined(separator: ", "))")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            } else if !fillBlankText.isEmpty {
                Button {
                    hasAnswered = true
                    if isFillBlankCorrect(question) { correctCount += 1 }
                } label: {
                    Text("Submit Answer")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(ManifyTheme.bg)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(ManifyTheme.goldGradient)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
    }

    private func matchingView(_ question: Question) -> some View {
        let pairs = question.matchingPairs
        let shuffledRightIndices = Array(0..<pairs.count)

        return VStack(spacing: 16) {
            Text("Tap a term, then tap its match")
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)

            HStack(alignment: .top, spacing: 12) {
                VStack(spacing: 8) {
                    Text("TERMS")
                        .font(.caption2.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                        .tracking(1)

                    ForEach(Array(pairs.enumerated()), id: \.offset) { index, pair in
                        Button {
                            guard !hasAnswered else { return }
                            selectedLeftIndex = index
                        } label: {
                            Text(pair.left)
                                .font(.caption)
                                .foregroundStyle(ManifyTheme.textPrimary)
                                .padding(10)
                                .frame(maxWidth: .infinity)
                                .background(
                                    selectedLeftIndex == index
                                        ? ManifyTheme.gold.opacity(0.2)
                                        : (matchedPairs[index] != nil ? ManifyTheme.success.opacity(0.1) : ManifyTheme.panel)
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(
                                            selectedLeftIndex == index
                                                ? ManifyTheme.gold
                                                : (matchedPairs[index] != nil ? ManifyTheme.success.opacity(0.3) : Color.white.opacity(0.06)),
                                            lineWidth: 1
                                        )
                                )
                                .clipShape(.rect(cornerRadius: 8))
                        }
                        .disabled(hasAnswered || matchedPairs[index] != nil)
                    }
                }

                VStack(spacing: 8) {
                    Text("MATCHES")
                        .font(.caption2.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                        .tracking(1)

                    ForEach(shuffledRightIndices, id: \.self) { rightIndex in
                        let isMatched = matchedPairs.values.contains(rightIndex)
                        Button {
                            guard !hasAnswered, let leftIdx = selectedLeftIndex else { return }
                            matchedPairs[leftIdx] = rightIndex
                            selectedLeftIndex = nil

                            if matchedPairs.count == pairs.count {
                                hasAnswered = true
                                let allCorrect = matchedPairs.allSatisfy { $0.key == $0.value }
                                if allCorrect { correctCount += 1 }
                            }
                        } label: {
                            Text(pairs[rightIndex].right)
                                .font(.caption)
                                .foregroundStyle(ManifyTheme.textPrimary)
                                .padding(10)
                                .frame(maxWidth: .infinity)
                                .background(isMatched ? ManifyTheme.success.opacity(0.1) : ManifyTheme.panel)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(isMatched ? ManifyTheme.success.opacity(0.3) : Color.white.opacity(0.06), lineWidth: 1)
                                )
                                .clipShape(.rect(cornerRadius: 8))
                        }
                        .disabled(hasAnswered || isMatched)
                    }
                }
            }

            if hasAnswered {
                let allCorrect = matchedPairs.allSatisfy { $0.key == $0.value }
                HStack(spacing: 6) {
                    Image(systemName: allCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .foregroundStyle(allCorrect ? ManifyTheme.success : ManifyTheme.danger)
                    Text(allCorrect ? "All matched correctly" : "Some matches were incorrect")
                        .font(.caption.weight(.semibold))
                        .foregroundStyle(allCorrect ? ManifyTheme.success : ManifyTheme.danger)
                }
            }
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
        case .multiSelect: "Multi-Select"
        case .matching: "Matching"
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

    private func multiSelectBorderColor(index: Int, question: Question) -> Color {
        guard hasAnswered else {
            return selectedAnswers.contains(index) ? ManifyTheme.gold : Color.white.opacity(0.2)
        }
        if question.correctIndices.contains(index) { return ManifyTheme.success }
        if selectedAnswers.contains(index) { return ManifyTheme.danger }
        return Color.white.opacity(0.08)
    }

    private func multiSelectBackground(index: Int, question: Question) -> Color {
        guard hasAnswered else { return ManifyTheme.panel }
        if question.correctIndices.contains(index) && selectedAnswers.contains(index) { return ManifyTheme.success.opacity(0.1) }
        if selectedAnswers.contains(index) && !question.correctIndices.contains(index) { return ManifyTheme.danger.opacity(0.1) }
        if question.correctIndices.contains(index) { return ManifyTheme.success.opacity(0.05) }
        return ManifyTheme.panel
    }

    private func isFillBlankCorrect(_ question: Question) -> Bool {
        let input = fillBlankText.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        return question.acceptedAnswers.contains { accepted in
            let clean = accepted.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
            return input == clean || input.contains(clean) || clean.contains(input)
        }
    }

    private func explanationCard(_ question: Question) -> some View {
        let isCorrect: Bool = switch question.type {
        case .multipleChoice, .scenario:
            selectedAnswer == question.correctIndex
        case .multiSelect:
            selectedAnswers == Set(question.correctIndices)
        case .fillBlank:
            isFillBlankCorrect(question)
        case .matching:
            matchedPairs.allSatisfy { $0.key == $0.value }
        }

        return VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 6) {
                Image(systemName: isCorrect ? "checkmark.circle.fill" : "info.circle.fill")
                    .foregroundStyle(isCorrect ? ManifyTheme.success : ManifyTheme.warning)
                Text(isCorrect ? "Correct" : "Incorrect")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(isCorrect ? ManifyTheme.success : ManifyTheme.warning)
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
            selectedAnswers = []
            fillBlankText = ""
            matchedPairs = [:]
            selectedLeftIndex = nil
            hasAnswered = false
        } else {
            progressStore.submitQuizScore(
                lessonId: lesson.id,
                score: correctCount,
                totalQuestions: questions.count
            )
            isComplete = true
            showExercisePrompt = true
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
        selectedAnswers = []
        fillBlankText = ""
        matchedPairs = [:]
        selectedLeftIndex = nil
        hasAnswered = false
        correctCount = 0
        isComplete = false
        answers = Array(repeating: nil, count: questions.count)
    }
}

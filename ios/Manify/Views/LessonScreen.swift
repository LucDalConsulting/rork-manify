import SwiftUI
import AVFoundation

struct LessonScreen: View {
    let lesson: Lesson
    @Environment(ProgressStore.self) private var progressStore
    @State private var showQuiz: Bool = false
    @State private var showFlashcards: Bool = false
    @State private var hasMarkedRead: Bool = false
    @State private var expandedSections: Set<String> = []
    @State private var readSections: Set<String> = []
    @State private var speech = SpeechService()
    @State private var isScrubbing: Bool = false
    @State private var scrubValue: Double = 0

    private var sectionProgress: Double {
        guard !lesson.contentBlocks.isEmpty else { return 0 }
        return Double(readSections.count) / Double(lesson.contentBlocks.count)
    }

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 16) {
                    lessonHeader
                    audioPlayerBar
                    progressBar
                    sectionControls

                    ForEach(Array(lesson.contentBlocks.enumerated()), id: \.element.id) { index, block in
                        let blockId = block.id
                        ContentBlockCard(
                            block: block,
                            index: index,
                            isExpanded: Binding(
                                get: { expandedSections.contains(blockId) },
                                set: { newValue in
                                    if newValue {
                                        expandedSections.insert(blockId)
                                        readSections.insert(blockId)
                                    } else {
                                        expandedSections.remove(blockId)
                                    }
                                }
                            ),
                            isRead: readSections.contains(blockId)
                        )
                        .id(blockId)
                    }

                    actionButtons
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 40)
            }
            .background(ManifyTheme.bg.ignoresSafeArea())
            .onChange(of: speech.currentBlockId) { _, newId in
                guard let newId else { return }
                withAnimation(.snappy(duration: 0.3)) {
                    expandedSections.insert(newId)
                    readSections.insert(newId)
                }
                withAnimation(.easeInOut(duration: 0.4)) {
                    proxy.scrollTo(newId, anchor: .top)
                }
            }
        }
        .navigationTitle(lesson.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    progressStore.toggleBookmark(lesson.id)
                } label: {
                    Image(systemName: progressStore.isBookmarked(lesson.id) ? "bookmark.fill" : "bookmark")
                        .foregroundStyle(ManifyTheme.gold)
                }
            }
        }
        .sheet(isPresented: $showQuiz) {
            QuizScreen(lesson: lesson)
        }
        .sheet(isPresented: $showFlashcards) {
            FlashcardsScreen(lesson: lesson)
        }
        .onAppear {
            if !hasMarkedRead {
                progressStore.markLessonRead(lesson.id)
                hasMarkedRead = true
            }
            if let first = lesson.contentBlocks.first {
                expandedSections.insert(first.id)
                readSections.insert(first.id)
            }
        }
        .onDisappear {
            speech.stop()
        }
    }

    private var lessonHeader: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("LESSON \(lesson.lessonNumber)")
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

            if let subtitle = lesson.subtitle {
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
            }

            HStack(spacing: 16) {
                Label("\(lesson.estimatedMinutes) min", systemImage: "clock.fill")
                difficultyIndicator
                Label(lesson.categoryId.displayName, systemImage: lesson.categoryId.icon)
            }
            .font(.caption)
            .foregroundStyle(ManifyTheme.textSecondary)

            let progress = progressStore.progress(for: lesson.id)
            if progress.bestScore > 0 {
                HStack(spacing: 8) {
                    Image(systemName: progress.isCompleted ? "checkmark.circle.fill" : "circle")
                        .foregroundStyle(progress.isCompleted ? ManifyTheme.success : ManifyTheme.textSecondary)

                    Text("Best Score: \(progress.bestScore)%")
                        .font(.caption.weight(.semibold))
                        .foregroundStyle(progress.bestScore >= 80 ? ManifyTheme.success : ManifyTheme.warning)

                    Text("•")
                        .foregroundStyle(ManifyTheme.textSecondary)

                    Text("\(progress.attempts) attempt\(progress.attempts == 1 ? "" : "s")")
                        .font(.caption)
                        .foregroundStyle(ManifyTheme.textSecondary)
                }
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(lesson.categoryId.accentColor.opacity(0.2), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 14))
    }

    // MARK: - Audio player

    private var audioPlayerBar: some View {
        VStack(spacing: 12) {
            HStack(spacing: 10) {
                Image(systemName: "headphones")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.gold)

                Text(speech.isSpeaking ? (speech.isPaused ? "Paused" : "Now Reading…") : "Listen to Lesson")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.textPrimary)

                Spacer()

                Menu {
                    ForEach(SpeechService.speedOptions, id: \.self) { opt in
                        Button {
                            speech.rate = opt
                        } label: {
                            if speech.rate == opt {
                                Label("\(speedLabel(opt))× speed", systemImage: "checkmark")
                            } else {
                                Text("\(speedLabel(opt))× speed")
                            }
                        }
                    }
                } label: {
                    Text("\(speedLabel(speech.rate))×")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(ManifyTheme.gold.opacity(0.12))
                        .clipShape(Capsule())
                }
            }

            VStack(spacing: 4) {
                Slider(
                    value: Binding(
                        get: { isScrubbing ? scrubValue : speech.progress },
                        set: { scrubValue = $0 }
                    ),
                    in: 0...1,
                    onEditingChanged: { editing in
                        if editing {
                            isScrubbing = true
                        } else {
                            isScrubbing = false
                            speech.seek(toProgress: scrubValue)
                        }
                    }
                )
                .tint(ManifyTheme.gold)

                HStack {
                    Text(formatTime(speech.elapsed))
                    Spacer()
                    Text(formatTime(speech.totalDuration))
                }
                .font(.caption2.monospacedDigit())
                .foregroundStyle(ManifyTheme.textSecondary)
            }

            HStack(spacing: 36) {
                Button {
                    speech.skip(by: -10)
                } label: {
                    Image(systemName: "gobackward.10")
                        .font(.title2)
                }

                Button {
                    if speech.isSpeaking {
                        speech.togglePauseResume()
                    } else {
                        speech.start(segments: buildSegments())
                    }
                } label: {
                    Image(systemName: playPauseIcon)
                        .font(.system(size: 46))
                        .foregroundStyle(ManifyTheme.gold)
                }
                .sensoryFeedback(.impact(weight: .medium), trigger: speech.isSpeaking)

                Button {
                    speech.skip(by: 10)
                } label: {
                    Image(systemName: "goforward.10")
                        .font(.title2)
                }
            }
            .foregroundStyle(ManifyTheme.textPrimary)
            .padding(.top, 2)

            if speech.isSpeaking {
                Button {
                    speech.stop()
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "stop.fill")
                        Text("Stop")
                    }
                    .font(.caption.weight(.medium))
                    .foregroundStyle(ManifyTheme.textSecondary)
                }
            }
        }
        .padding(16)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(ManifyTheme.gold.opacity(0.2), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 14))
    }

    private var playPauseIcon: String {
        if speech.isSpeaking {
            return speech.isPaused ? "play.circle.fill" : "pause.circle.fill"
        }
        return "play.circle.fill"
    }

    private func speedLabel(_ r: Float) -> String {
        String(format: "%g", r)
    }

    private func formatTime(_ t: TimeInterval) -> String {
        guard t.isFinite, t >= 0 else { return "0:00" }
        let total = Int(t.rounded())
        return String(format: "%d:%02d", total / 60, total % 60)
    }

    private var progressBar: some View {
        VStack(spacing: 8) {
            HStack {
                Text("SECTIONS READ")
                    .font(.caption2.weight(.bold))
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .tracking(0.8)

                Spacer()

                Text("\(readSections.count) / \(lesson.contentBlocks.count)")
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(sectionProgress >= 1.0 ? ManifyTheme.success : ManifyTheme.gold)
            }

            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(Color.white.opacity(0.06))
                        .frame(height: 4)

                    Capsule()
                        .fill(
                            sectionProgress >= 1.0
                            ? AnyShapeStyle(ManifyTheme.success)
                            : AnyShapeStyle(ManifyTheme.goldGradient)
                        )
                        .frame(width: geo.size.width * sectionProgress, height: 4)
                        .animation(.smooth(duration: 0.4), value: sectionProgress)
                }
            }
            .frame(height: 4)
        }
        .padding(.horizontal, 4)
    }

    private var sectionControls: some View {
        HStack(spacing: 12) {
            Button {
                withAnimation(.snappy(duration: 0.3)) {
                    if expandedSections.count == lesson.contentBlocks.count {
                        expandedSections.removeAll()
                    } else {
                        for block in lesson.contentBlocks {
                            expandedSections.insert(block.id)
                            readSections.insert(block.id)
                        }
                    }
                }
            } label: {
                HStack(spacing: 6) {
                    Image(systemName: expandedSections.count == lesson.contentBlocks.count
                          ? "arrow.down.right.and.arrow.up.left"
                          : "arrow.up.left.and.arrow.down.right")
                        .font(.caption2)
                    Text(expandedSections.count == lesson.contentBlocks.count ? "Collapse All" : "Expand All")
                        .font(.caption.weight(.medium))
                }
                .foregroundStyle(ManifyTheme.textSecondary)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color.white.opacity(0.04))
                .clipShape(Capsule())
            }

            Spacer()

            if readSections.count == lesson.contentBlocks.count {
                HStack(spacing: 4) {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.caption)
                    Text("All Read")
                        .font(.caption.weight(.semibold))
                }
                .foregroundStyle(ManifyTheme.success)
                .transition(.scale.combined(with: .opacity))
            }
        }
    }

    private var difficultyIndicator: some View {
        HStack(spacing: 3) {
            ForEach(1...3, id: \.self) { level in
                Circle()
                    .fill(level <= lesson.difficulty ? ManifyTheme.gold : Color.white.opacity(0.1))
                    .frame(width: 5, height: 5)
            }
        }
    }

    private var actionButtons: some View {
        VStack(spacing: 12) {
            if !lesson.quiz.questions.isEmpty {
                Button {
                    showQuiz = true
                } label: {
                    HStack {
                        Image(systemName: "questionmark.circle.fill")
                        Text("Start Quiz")
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(lesson.quiz.questions.count) questions")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                        Image(systemName: "chevron.right")
                    }
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.bg)
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(ManifyTheme.goldGradient)
                    .clipShape(.rect(cornerRadius: 14))
                }
                .sensoryFeedback(.impact(weight: .medium), trigger: showQuiz)
            }

            if !lesson.flashcards.isEmpty {
                Button {
                    showFlashcards = true
                } label: {
                    HStack {
                        Image(systemName: "rectangle.stack.fill")
                        Text("Flashcards")
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(lesson.flashcards.count) cards")
                            .font(.caption)
                        Image(systemName: "chevron.right")
                    }
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(ManifyTheme.panel)
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(ManifyTheme.gold.opacity(0.3), lineWidth: 1)
                    )
                    .clipShape(.rect(cornerRadius: 14))
                }
            }
        }
    }

    // Builds the ordered spoken segments for the whole lesson. Each segment is tagged
    // with the content block it belongs to so the player can open + scroll to that
    // section as it is read. Bullets/body/callouts are separate segments so ±10s
    // skipping and scrubbing land on natural boundaries.
    private func buildSegments() -> [SpeechSegment] {
        var result: [SpeechSegment] = []

        func add(_ text: String, block: String?) {
            let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
            guard !trimmed.isEmpty else { return }
            result.append(SpeechSegment(text: trimmed, blockId: block, charCount: max(trimmed.count, 1)))
        }

        add(lesson.title, block: nil)
        if let subtitle = lesson.subtitle { add(subtitle, block: nil) }

        for block in lesson.contentBlocks {
            let header = block.title.isEmpty ? block.type.displayTitle.capitalized : block.title
            add(header + ".", block: block.id)
            for bullet in block.bullets { add(bullet, block: block.id) }
            if let body = block.body { add(body, block: block.id) }
            for callout in block.callouts { add(callout, block: block.id) }
        }

        return result
    }
}

// A single spoken chunk of a lesson, mapped back to its content block.
struct SpeechSegment {
    let text: String
    let blockId: String?
    let charCount: Int
}

@Observable
@MainActor
final class SpeechService: NSObject, AVSpeechSynthesizerDelegate {
    static let speedOptions: [Float] = [0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0]

    private let synthesizer = AVSpeechSynthesizer()

    private(set) var isSpeaking = false
    private(set) var isPaused = false
    private(set) var currentBlockId: String?
    private(set) var progress: Double = 0
    private(set) var elapsed: TimeInterval = 0
    private(set) var totalDuration: TimeInterval = 0

    // User-facing playback speed multiplier (1.0 = normal).
    var rate: Float = 1.0 {
        didSet {
            recomputeDuration()
            guard isSpeaking, !isPaused else { return }
            jump(to: currentIndex)
        }
    }

    private var segments: [SpeechSegment] = []
    private var segmentStart: [Int] = []
    private var totalChars = 1
    private var currentIndex = 0
    private var charsBeforeCurrent = 0
    private var rangeWithinCurrent = 0

    private let baseCharsPerSecond = 14.0

    override init() {
        super.init()
        synthesizer.delegate = self
    }

    // MARK: - Public controls

    func start(segments newSegments: [SpeechSegment]) {
        load(newSegments)
        guard !segments.isEmpty else { return }
        activateSession()
        isSpeaking = true
        isPaused = false
        jump(to: 0)
    }

    func togglePauseResume() {
        guard isSpeaking else { return }
        if isPaused {
            synthesizer.continueSpeaking()
            isPaused = false
        } else {
            synthesizer.pauseSpeaking(at: .word)
            isPaused = true
        }
    }

    func stop() {
        synthesizer.stopSpeaking(at: .immediate)
        isSpeaking = false
        isPaused = false
        currentIndex = 0
        charsBeforeCurrent = 0
        rangeWithinCurrent = 0
        progress = 0
        elapsed = 0
        currentBlockId = nil
        deactivateSession()
    }

    func skip(by seconds: Double) {
        guard !segments.isEmpty else { return }
        let cps = max(baseCharsPerSecond * Double(rate), 1)
        let spokenChars = charsBeforeCurrent + rangeWithinCurrent
        seek(toChar: Double(spokenChars) + seconds * cps)
    }

    func seek(toProgress p: Double) {
        guard !segments.isEmpty else { return }
        seek(toChar: p * Double(totalChars))
    }

    // MARK: - Internal

    private func seek(toChar rawChar: Double) {
        let clamped = min(max(rawChar, 0), Double(max(totalChars - 1, 0)))
        let index = segmentIndex(forChar: Int(clamped))
        if !isSpeaking {
            activateSession()
            isSpeaking = true
        }
        isPaused = false
        jump(to: index)
    }

    private func segmentIndex(forChar c: Int) -> Int {
        var idx = 0
        for i in 0..<segments.count {
            if segmentStart[i] <= c { idx = i } else { break }
        }
        return idx
    }

    private func load(_ newSegments: [SpeechSegment]) {
        segments = newSegments.filter { !$0.text.isEmpty }
        segmentStart = []
        var running = 0
        for seg in segments {
            segmentStart.append(running)
            running += max(seg.charCount, 1)
        }
        totalChars = max(running, 1)
        recomputeDuration()
    }

    private func recomputeDuration() {
        let cps = max(baseCharsPerSecond * Double(rate), 1)
        totalDuration = Double(totalChars) / cps
    }

    // Cancel whatever is currently speaking and start the given segment fresh.
    private func jump(to index: Int) {
        guard index >= 0, index < segments.count else { finishPlayback(); return }
        synthesizer.stopSpeaking(at: .immediate) // delivers didCancel, which we ignore
        speakSegment(at: index)
    }

    // Speak one segment. Called by jump() and by natural advance in didFinish.
    private func speakSegment(at index: Int) {
        guard index >= 0, index < segments.count else { finishPlayback(); return }
        currentIndex = index
        charsBeforeCurrent = segmentStart[index]
        rangeWithinCurrent = 0
        if let bid = segments[index].blockId { currentBlockId = bid }

        let utterance = AVSpeechUtterance(string: segments[index].text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let mapped = AVSpeechUtteranceDefaultSpeechRate * rate
        utterance.rate = min(max(mapped, AVSpeechUtteranceMinimumSpeechRate), AVSpeechUtteranceMaximumSpeechRate)
        utterance.pitchMultiplier = 0.96
        utterance.postUtteranceDelay = 0.05
        synthesizer.speak(utterance)
        updateProgress()
    }

    private func finishPlayback() {
        isSpeaking = false
        isPaused = false
        progress = 1
        elapsed = totalDuration
        currentIndex = 0
        deactivateSession()
    }

    private func updateProgress() {
        let spoken = min(charsBeforeCurrent + rangeWithinCurrent, totalChars)
        progress = Double(spoken) / Double(totalChars)
        elapsed = progress * totalDuration
    }

    private func activateSession() {
        // THE fix for "no voice": without an active .playback session, speech is
        // silenced whenever the hardware mute switch is on. .spokenAudio tunes the
        // route for narration; .duckOthers lowers any background audio while reading.
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playback, mode: .spokenAudio, options: [.duckOthers])
            try session.setActive(true)
        } catch {
            // If the session can't be configured we still attempt to speak.
        }
    }

    private func deactivateSession() {
        try? AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
    }

    // MARK: - AVSpeechSynthesizerDelegate

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        Task { @MainActor in
            guard self.isSpeaking, !self.isPaused else { return }
            let next = self.currentIndex + 1
            if next < self.segments.count {
                self.speakSegment(at: next)
            } else {
                self.finishPlayback()
            }
        }
    }

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
        Task { @MainActor in
            self.rangeWithinCurrent = characterRange.location + characterRange.length
            self.updateProgress()
        }
    }
}

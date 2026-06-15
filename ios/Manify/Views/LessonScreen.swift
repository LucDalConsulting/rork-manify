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
    @State private var showPlayer: Bool = true

    private var sectionProgress: Double {
        guard !lesson.contentBlocks.isEmpty else { return 0 }
        return Double(readSections.count) / Double(lesson.contentBlocks.count)
    }

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 16) {
                    lessonHeader
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
            .safeAreaInset(edge: .bottom) {
                if showPlayer {
                    bottomPlayerBar
                }
            }
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
                    withAnimation(.snappy(duration: 0.25)) {
                        showPlayer.toggle()
                    }
                    if !showPlayer {
                        speech.stop()
                    }
                } label: {
                    Image(systemName: showPlayer ? "speaker.wave.2.fill" : "speaker.slash.fill")
                        .foregroundStyle(ManifyTheme.gold)
                }
            }
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

    // MARK: - Audio player (docked bottom bar, iPhone-style)

    private var bottomPlayerBar: some View {
        VStack(spacing: 6) {
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
            .controlSize(.mini)
            .tint(ManifyTheme.gold)

            HStack(spacing: 14) {
                VStack(alignment: .leading, spacing: 1) {
                    Text(speech.isSpeaking ? (speech.isPaused ? "Paused" : "Now Reading") : "Listen to Lesson")
                        .font(.caption.weight(.semibold))
                        .foregroundStyle(ManifyTheme.textPrimary)
                        .lineLimit(1)
                    Text("\(formatTime(speech.elapsed)) / \(formatTime(speech.totalDuration))")
                        .font(.caption2.monospacedDigit())
                        .foregroundStyle(ManifyTheme.textSecondary)
                }

                Spacer(minLength: 8)

                Button {
                    speech.skip(by: -10)
                } label: {
                    Image(systemName: "gobackward.10").font(.title3)
                }
                .foregroundStyle(ManifyTheme.textPrimary)

                Button {
                    if speech.isSpeaking {
                        speech.togglePauseResume()
                    } else {
                        speech.start(lesson: lesson, segments: buildSegments())
                    }
                } label: {
                    Image(systemName: playPauseIcon)
                        .font(.system(size: 42))
                        .foregroundStyle(ManifyTheme.gold)
                }
                .sensoryFeedback(.impact(weight: .medium), trigger: speech.isSpeaking)

                Button {
                    speech.skip(by: 10)
                } label: {
                    Image(systemName: "goforward.10").font(.title3)
                }
                .foregroundStyle(ManifyTheme.textPrimary)

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
                        .frame(minWidth: 30)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 4)
                        .background(ManifyTheme.gold.opacity(0.12))
                        .clipShape(Capsule())
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 8)
        .padding(.bottom, 6)
        .background(.ultraThinMaterial)
        .overlay(alignment: .top) {
            Rectangle()
                .fill(Color.white.opacity(0.08))
                .frame(height: 0.5)
        }
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

    // Pre-generated "Adam" (Kokoro) narration, served free via jsDelivr over the repo.
    private static let audioBaseURL = "https://cdn.jsdelivr.net/gh/LucDalConsulting/rork-manify@audio-assets/audio/"

    private let synthesizer = AVSpeechSynthesizer()

    // Best available deep male English voice — the OFFLINE fallback used when the
    // streamed Adam audio isn't reachable. Premium/Enhanced downloaded voices sound
    // far better than the default compact voice.
    private let preferredVoice: AVSpeechSynthesisVoice? = SpeechService.bestMaleEnglishVoice()

    private static func bestMaleEnglishVoice() -> AVSpeechSynthesisVoice? {
        let english = AVSpeechSynthesisVoice.speechVoices().filter { $0.language.hasPrefix("en") }
        func score(_ v: AVSpeechSynthesisVoice) -> Int {
            var s = 0
            s += (v.language == "en-US") ? 100 : 40
            if v.gender == .male { s += 50 }
            switch v.quality {
            case .premium: s += 30
            case .enhanced: s += 20
            default: break
            }
            return s
        }
        return english.max { score($0) < score($1) }
    }

    private(set) var isSpeaking = false
    private(set) var isPaused = false
    private(set) var currentBlockId: String?
    private(set) var progress: Double = 0
    private(set) var elapsed: TimeInterval = 0
    private(set) var totalDuration: TimeInterval = 0

    // User-facing playback speed multiplier (1.0 = normal).
    var rate: Float = 1.0 {
        didSet { applyRate() }
    }

    private enum Mode { case idle, streaming, synth }
    private var mode: Mode = .idle

    // Streaming engine (AVPlayer) — plays the pre-generated Adam audio.
    private var player: AVPlayer?
    private var timeObserver: Any?
    private var statusObservation: NSKeyValueObservation?
    private var endObserver: NSObjectProtocol?
    private var blockTimeline: [(start: Double, id: String)] = []

    // Synth engine (AVSpeechSynthesizer) — offline fallback, chunked by segment.
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

    func start(lesson: Lesson, segments newSegments: [SpeechSegment]) {
        stop()
        loadSegments(newSegments)
        guard !segments.isEmpty else { return }
        if let url = URL(string: SpeechService.audioBaseURL + lesson.id + ".mp3") {
            startStreaming(url: url)
        } else {
            startSynth()
        }
    }

    func togglePauseResume() {
        guard isSpeaking else { return }
        switch mode {
        case .streaming:
            if isPaused {
                player?.rate = rate
                isPaused = false
            } else {
                player?.pause()
                isPaused = true
            }
        case .synth:
            if isPaused {
                synthesizer.continueSpeaking()
                isPaused = false
            } else {
                synthesizer.pauseSpeaking(at: .word)
                isPaused = true
            }
        case .idle:
            break
        }
    }

    func stop() {
        teardownStreaming()
        synthesizer.stopSpeaking(at: .immediate)
        mode = .idle
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
        switch mode {
        case .streaming:
            guard let player, totalDuration > 0 else { return }
            let target = min(max(player.currentTime().seconds + seconds, 0), totalDuration)
            player.seek(to: CMTime(seconds: target, preferredTimescale: 600))
        case .synth:
            guard !segments.isEmpty else { return }
            let cps = max(baseCharsPerSecond * Double(rate), 1)
            let spokenChars = charsBeforeCurrent + rangeWithinCurrent
            seekSynth(toChar: Double(spokenChars) + seconds * cps)
        case .idle:
            break
        }
    }

    func seek(toProgress p: Double) {
        switch mode {
        case .streaming:
            guard let player, totalDuration > 0 else { return }
            player.seek(to: CMTime(seconds: p * totalDuration, preferredTimescale: 600))
        case .synth:
            guard !segments.isEmpty else { return }
            seekSynth(toChar: p * Double(totalChars))
        case .idle:
            break
        }
    }

    private func applyRate() {
        switch mode {
        case .streaming:
            if isSpeaking, !isPaused { player?.rate = rate }
        case .synth:
            recomputeSynthDuration()
            if isSpeaking, !isPaused { jumpSynth(to: currentIndex) }
        case .idle:
            break
        }
    }

    // MARK: - Streaming engine (AVPlayer)

    private func startStreaming(url: URL) {
        activateSession()
        buildBlockTimeline()
        let item = AVPlayerItem(url: url)
        item.audioTimePitchAlgorithm = .timeDomain
        let p = AVPlayer(playerItem: item)
        player = p
        mode = .streaming
        isSpeaking = true
        isPaused = false
        progress = 0
        elapsed = 0
        totalDuration = 0

        statusObservation = item.observe(\.status, options: [.new]) { [weak self] obsItem, _ in
            Task { @MainActor in
                guard let self, self.mode == .streaming else { return }
                switch obsItem.status {
                case .readyToPlay:
                    let d = obsItem.duration.seconds
                    if d.isFinite, d > 0 { self.totalDuration = d }
                    self.player?.rate = self.rate
                case .failed:
                    self.fallbackToSynth()
                default:
                    break
                }
            }
        }

        endObserver = NotificationCenter.default.addObserver(
            forName: .AVPlayerItemDidPlayToEndTime, object: item, queue: .main
        ) { [weak self] _ in
            Task { @MainActor in self?.finishStreaming() }
        }

        timeObserver = p.addPeriodicTimeObserver(
            forInterval: CMTime(seconds: 0.25, preferredTimescale: 600), queue: .main
        ) { [weak self] time in
            let secs = time.seconds
            Task { @MainActor in self?.tickStreaming(time: secs) }
        }
    }

    private func tickStreaming(time: Double) {
        guard mode == .streaming, totalDuration > 0 else { return }
        elapsed = time
        progress = min(max(time / totalDuration, 0), 1)
        var bid = currentBlockId
        for entry in blockTimeline {
            if entry.start <= progress { bid = entry.id } else { break }
        }
        if let bid, bid != currentBlockId { currentBlockId = bid }
    }

    private func buildBlockTimeline() {
        var total = 0
        for s in segments { total += max(s.charCount, 1) }
        total = max(total, 1)
        var running = 0
        var timeline: [(start: Double, id: String)] = []
        var last: String?
        for s in segments {
            if let bid = s.blockId, bid != last {
                timeline.append((start: Double(running) / Double(total), id: bid))
                last = bid
            }
            running += max(s.charCount, 1)
        }
        blockTimeline = timeline
    }

    private func finishStreaming() {
        isSpeaking = false
        isPaused = false
        progress = 1
        elapsed = totalDuration
        deactivateSession()
    }

    private func fallbackToSynth() {
        teardownStreaming()
        startSynth()
    }

    private func teardownStreaming() {
        if let t = timeObserver {
            player?.removeTimeObserver(t)
            timeObserver = nil
        }
        statusObservation?.invalidate()
        statusObservation = nil
        if let e = endObserver {
            NotificationCenter.default.removeObserver(e)
            endObserver = nil
        }
        player?.pause()
        player = nil
    }

    // MARK: - Synth engine (AVSpeechSynthesizer fallback)

    private func startSynth() {
        guard !segments.isEmpty else { return }
        activateSession()
        mode = .synth
        isSpeaking = true
        isPaused = false
        jumpSynth(to: 0)
    }

    private func loadSegments(_ newSegments: [SpeechSegment]) {
        segments = newSegments.filter { !$0.text.isEmpty }
        segmentStart = []
        var running = 0
        for seg in segments {
            segmentStart.append(running)
            running += max(seg.charCount, 1)
        }
        totalChars = max(running, 1)
        recomputeSynthDuration()
    }

    private func recomputeSynthDuration() {
        guard mode != .streaming else { return }
        let cps = max(baseCharsPerSecond * Double(rate), 1)
        totalDuration = Double(totalChars) / cps
    }

    private func seekSynth(toChar rawChar: Double) {
        let clamped = min(max(rawChar, 0), Double(max(totalChars - 1, 0)))
        var idx = 0
        for i in 0..<segments.count {
            if segmentStart[i] <= Int(clamped) { idx = i } else { break }
        }
        if !isSpeaking {
            activateSession()
            mode = .synth
            isSpeaking = true
        }
        isPaused = false
        jumpSynth(to: idx)
    }

    private func jumpSynth(to index: Int) {
        guard index >= 0, index < segments.count else { finishSynth(); return }
        synthesizer.stopSpeaking(at: .immediate)
        speakSegment(at: index)
    }

    private func speakSegment(at index: Int) {
        guard index >= 0, index < segments.count else { finishSynth(); return }
        currentIndex = index
        charsBeforeCurrent = segmentStart[index]
        rangeWithinCurrent = 0
        if let bid = segments[index].blockId { currentBlockId = bid }

        let utterance = AVSpeechUtterance(string: segments[index].text)
        utterance.voice = preferredVoice ?? AVSpeechSynthesisVoice(language: "en-US")
        let mapped = AVSpeechUtteranceDefaultSpeechRate * rate
        utterance.rate = min(max(mapped, AVSpeechUtteranceMinimumSpeechRate), AVSpeechUtteranceMaximumSpeechRate)
        utterance.pitchMultiplier = 0.96
        utterance.postUtteranceDelay = 0.05
        synthesizer.speak(utterance)
        updateSynthProgress()
    }

    private func finishSynth() {
        isSpeaking = false
        isPaused = false
        progress = 1
        elapsed = totalDuration
        currentIndex = 0
        deactivateSession()
    }

    private func updateSynthProgress() {
        let spoken = min(charsBeforeCurrent + rangeWithinCurrent, totalChars)
        progress = Double(spoken) / Double(totalChars)
        elapsed = progress * totalDuration
    }

    // MARK: - Audio session

    private func activateSession() {
        // Without an active .playback session, audio is silenced when the hardware
        // mute switch is on. .spokenAudio tunes the route for narration; .duckOthers
        // lowers any background audio while reading.
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playback, mode: .spokenAudio, options: [.duckOthers])
            try session.setActive(true)
        } catch {
        }
    }

    private func deactivateSession() {
        try? AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
    }

    // MARK: - AVSpeechSynthesizerDelegate (synth fallback only)

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        Task { @MainActor in
            guard self.mode == .synth, self.isSpeaking, !self.isPaused else { return }
            let next = self.currentIndex + 1
            if next < self.segments.count {
                self.speakSegment(at: next)
            } else {
                self.finishSynth()
            }
        }
    }

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
        Task { @MainActor in
            guard self.mode == .synth else { return }
            self.rangeWithinCurrent = characterRange.location + characterRange.length
            self.updateSynthProgress()
        }
    }
}

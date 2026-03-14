import SwiftUI

struct LessonScreen: View {
    let lesson: Lesson
    @Environment(ProgressStore.self) private var progressStore
    @State private var showQuiz: Bool = false
    @State private var showFlashcards: Bool = false
    @State private var hasMarkedRead: Bool = false
    @State private var expandedSections: Set<String> = []
    @State private var readSections: Set<String> = []

    private var sectionProgress: Double {
        guard !lesson.contentBlocks.isEmpty else { return 0 }
        return Double(readSections.count) / Double(lesson.contentBlocks.count)
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                lessonHeader
                progressBar
                sectionControls

                ForEach(Array(lesson.contentBlocks.enumerated()), id: \.element.id) { index, block in
                    let blockId = block.id
                    let isExpanded = expandedSections.contains(blockId)
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
                }

                actionButtons
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 40)
        }
        .background(ManifyTheme.bg.ignoresSafeArea())
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
}

import SwiftUI

struct LearningView: View {
    let unitId: String
    let lessonId: String
    @EnvironmentObject var contentService: ContentService
    @State private var currentCardIndex = 0
    @State private var showingAnswer = false
    @State private var userAnswer = ""
    @State private var hintsUsed = 0
    @State private var showingHint = false
    
    var currentCard: LearningCard? {
        guard currentCardIndex < contentService.currentCards.count else { return nil }
        return contentService.currentCards[currentCardIndex]
    }
    
    var isLastCard: Bool {
        currentCardIndex >= contentService.currentCards.count - 1
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Top Navigation Bar
            TopNavigationBar(
                currentIndex: currentCardIndex + 1,
                totalCards: contentService.currentCards.count,
                lessonName: contentService.currentLesson?.lessonName ?? "Learning"
            )
            
            // Main Content Area
            HStack(spacing: 0) {
                // Card Content (Left Side)
                CardContentView(
                    card: currentCard,
                    showingAnswer: $showingAnswer,
                    showingHint: $showingHint,
                    hintsUsed: $hintsUsed
                )
                .frame(maxWidth: .infinity)
                
                Divider()
                
                // Interaction Area (Right Side)
                InteractionView(
                    card: currentCard,
                    userAnswer: $userAnswer,
                    showingAnswer: $showingAnswer,
                    hintsUsed: $hintsUsed,
                    onSubmit: handleSubmission,
                    onNext: nextCard,
                    onPrevious: previousCard,
                    isLastCard: isLastCard
                )
                .frame(maxWidth: .infinity)
            }
            .frame(maxHeight: .infinity)
        }
        .task {
            print("DEBUG: LearningView task started for unit: \(unitId), lesson: \(lessonId)")
            await contentService.loadLesson(unitId: unitId, lessonId: lessonId)
            print("DEBUG: After loadLesson - currentCards count: \(contentService.currentCards.count)")
            resetCardState()
        }
        .onChange(of: currentCardIndex) { _, _ in
            resetCardState()
        }
    }
    
    private func handleSubmission(correct: Bool) {
        showingAnswer = true
    }
    
    private func nextCard() {
        if currentCardIndex < contentService.currentCards.count - 1 {
            currentCardIndex += 1
        }
    }
    
    private func previousCard() {
        if currentCardIndex > 0 {
            currentCardIndex -= 1
        }
    }
    
    private func resetCardState() {
        showingAnswer = false
        userAnswer = ""
        hintsUsed = 0
        showingHint = false
    }
}

struct TopNavigationBar: View {
    let currentIndex: Int
    let totalCards: Int
    let lessonName: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(lessonName)
                    .font(.headline)
                Text("Card \(currentIndex) of \(totalCards)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            ProgressView(value: Double(max(0, min(currentIndex, totalCards))), total: Double(max(1, totalCards)))
                .frame(width: 200)
        }
        .padding()
        .background(Color(NSColor.controlBackgroundColor))
    }
}

struct CardContentView: View {
    let card: LearningCard?
    @Binding var showingAnswer: Bool
    @Binding var showingHint: Bool
    @Binding var hintsUsed: Int
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                if let card = card {
                    // Card Header
                    HStack {
                        Image(systemName: card.type.icon)
                            .font(.title2)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text(card.type.displayName)
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(card.title)
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                        Spacer()
                        Text(card.formattedDuration)
                            .font(.caption)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(4)
                    }
                    
                    Divider()
                    
                    // Card Content
                    CardTypeContent(card: card)
                    
                    // Hint Section
                    if let hints = card.content.hints, !hints.isEmpty {
                        VStack(alignment: .leading, spacing: 8) {
                            Button(action: {
                                showingHint.toggle()
                                if showingHint {
                                    hintsUsed += 1
                                }
                            }) {
                                HStack {
                                    Image(systemName: "lightbulb")
                                    Text("Need a hint?")
                                }
                            }
                            .buttonStyle(.borderless)
                            
                            if showingHint && hintsUsed > 0 && hintsUsed <= hints.count {
                                Text(hints[hintsUsed - 1])
                                    .padding()
                                    .background(Color.yellow.opacity(0.1))
                                    .cornerRadius(8)
                            }
                        }
                    }
                    
                    // Answer Section (when revealed)
                    if showingAnswer {
                        AnswerSection(card: card)
                    }
                }
            }
            .padding()
        }
    }
}

struct CardTypeContent: View {
    let card: LearningCard
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            if let explanation = card.content.explanation {
                Text(explanation)
                    .font(.body)
            }
            
            if let example = card.content.example {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Example:")
                        .font(.headline)
                    Text(example)
                        .font(.body)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            
            if let keyPoint = card.content.keyPoint {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Key Point:")
                        .font(.headline)
                    Text(keyPoint)
                        .font(.body)
                        .fontWeight(.medium)
                        .padding()
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            
            if let problem = card.content.problem {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Problem:")
                        .font(.headline)
                    Text(problem)
                        .font(.body)
                        .padding()
                        .background(Color.orange.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            
            if let steps = card.content.steps {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Solution Steps:")
                        .font(.headline)
                    ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                        HStack(alignment: .top) {
                            Text("\(index + 1).")
                                .fontWeight(.semibold)
                                .frame(width: 20, alignment: .leading)
                            Text(step)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.vertical, 2)
                    }
                }
            }
        }
    }
}

struct AnswerSection: View {
    let card: LearningCard
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Answer:")
                .font(.headline)
            
            if let solution = card.content.solution {
                Text(solution)
                    .font(.body)
                    .padding()
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(8)
            }
        }
    }
}

struct InteractionView: View {
    let card: LearningCard?
    @Binding var userAnswer: String
    @Binding var showingAnswer: Bool
    @Binding var hintsUsed: Int
    let onSubmit: (Bool) -> Void
    let onNext: () -> Void
    let onPrevious: () -> Void
    let isLastCard: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Your Response")
                .font(.headline)
            
            if let card = card {
                InteractionTypeView(
                    card: card,
                    userAnswer: $userAnswer,
                    showingAnswer: $showingAnswer,
                    onSubmit: onSubmit
                )
            }
            
            Spacer()
            
            // Navigation Buttons
            HStack {
                Button("Previous", action: onPrevious)
                    .buttonStyle(.bordered)
                
                Spacer()
                
                if showingAnswer {
                    Button(isLastCard ? "Complete Lesson" : "Next", action: onNext)
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .padding()
    }
}

struct InteractionTypeView: View {
    let card: LearningCard
    @Binding var userAnswer: String
    @Binding var showingAnswer: Bool
    let onSubmit: (Bool) -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            if let interactive = card.interactive {
                switch interactive.type ?? "default" {
                case "question":
                    MultipleChoiceView(
                        interactive: interactive,
                        userAnswer: $userAnswer,
                        showingAnswer: $showingAnswer,
                        onSubmit: onSubmit
                    )
                default:
                    // If question exists but no type, treat as multiple choice
                    if interactive.question != nil && interactive.options != nil {
                        MultipleChoiceView(
                            interactive: interactive,
                            userAnswer: $userAnswer,
                            showingAnswer: $showingAnswer,
                            onSubmit: onSubmit
                        )
                    } else {
                        Text("Ready to continue?")
                            .font(.body)
                        
                        if !showingAnswer {
                            Button("Mark as Complete") {
                                onSubmit(true)
                            }
                            .buttonStyle(.borderedProminent)
                        }
                    }
                }
            } else {
                Text("Ready to continue?")
                    .font(.body)
                
                if !showingAnswer {
                    Button("Mark as Complete") {
                        onSubmit(true)
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

struct MultipleChoiceView: View {
    let interactive: InteractiveElement
    @Binding var userAnswer: String
    @Binding var showingAnswer: Bool
    let onSubmit: (Bool) -> Void
    @State private var selectedOption: Int?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if let question = interactive.question {
                Text(question)
                    .font(.body)
                    .fontWeight(.medium)
            }
            
            if let options = interactive.options {
                ForEach(Array(options.enumerated()), id: \.offset) { index, option in
                    Button(action: {
                        selectedOption = index
                        userAnswer = option
                    }) {
                        HStack {
                            Text(option)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            if selectedOption == index {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding()
                        .background(
                            selectedOption == index ? Color.blue.opacity(0.1) : Color.gray.opacity(0.1)
                        )
                        .cornerRadius(8)
                    }
                    .buttonStyle(.plain)
                }
            }
            
            if !showingAnswer && selectedOption != nil {
                Button("Submit Answer") {
                    let correct = selectedOption == interactive.correct
                    onSubmit(correct)
                }
                .buttonStyle(.borderedProminent)
            }
            
            if showingAnswer {
                if let correctIndex = interactive.correct,
                   let options = interactive.options,
                   correctIndex < options.count {
                    Text("Correct answer: \(options[correctIndex])")
                        .font(.caption)
                        .foregroundColor(.green)
                        .padding()
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(8)
                }
            }
        }
    }
}
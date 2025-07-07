import SwiftUI

struct ContentView: View {
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    @Binding var selectedContentType: ContentType
    @EnvironmentObject var contentService: ContentService
    
    var body: some View {
        VStack {
            if let unitId = selectedUnit {
                UnitOverviewView(
                    unitId: unitId,
                    selectedUnit: $selectedUnit,
                    selectedLesson: $selectedLesson,
                    showingLearningView: $showingLearningView,
                    selectedContentType: $selectedContentType
                )
            } else {
                SelectUnitPrompt()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(NSColor.controlBackgroundColor))
    }
}

struct UnitOverviewView: View {
    let unitId: String
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    @Binding var selectedContentType: ContentType
    @EnvironmentObject var contentService: ContentService
    
    var unit: UnitIndex? {
        contentService.units.first { $0.unitId == unitId }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Unit Header
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "book.closed")
                            .font(.title)
                            .foregroundColor(.blue)
                        Text(unitId.replacingOccurrences(of: "_", with: " ").capitalized)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    if let unit = unit {
                        HStack {
                            Text("\(unit.totalLessons) lessons")
                            Text("•")
                            Text("\(unit.totalCards) cards")
                            Text("•")
                            Text("\(unit.totalDuration / 60) minutes")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    }
                    
                    ProgressView(value: 0.0, total: 1.0)
                        .tint(.blue)
                }
                .padding()
                .background(Color(NSColor.controlBackgroundColor))
                .cornerRadius(12)
                
                // Back to All Lessons Button
                if selectedLesson != nil {
                    HStack {
                        Button(action: {
                            selectedLesson = nil
                        }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text("Back to All Lessons")
                            }
                            .foregroundColor(.accentColor)
                        }
                        .buttonStyle(PlainButtonStyle())
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                
                // Content Type Selection or Lessons Grid
                if let unit = unit {
                    if let selectedLessonId = selectedLesson,
                       let lessonInfo = unit.lessons[selectedLessonId] {
                        // Show content type selection for the selected lesson
                        ContentTypeSelectionView(
                            unitId: unitId,
                            lessonId: selectedLessonId,
                            lessonInfo: lessonInfo,
                            selectedUnit: $selectedUnit,
                            selectedLesson: $selectedLesson,
                            showingLearningView: $showingLearningView,
                            selectedContentType: $selectedContentType
                        )
                        .padding(.horizontal)
                    } else {
                        // Show all lessons grid
                        LazyVGrid(columns: [
                            GridItem(.adaptive(minimum: 300), spacing: 16)
                        ], spacing: 16) {
                            ForEach(Array(unit.lessons.keys.sorted { lessonId1, lessonId2 in
                                // Extract lesson numbers for proper sorting
                                let num1 = extractLessonNumber(from: lessonId1)
                                let num2 = extractLessonNumber(from: lessonId2)
                                return num1 < num2
                            }), id: \.self) { lessonId in
                                if let lessonInfo = unit.lessons[lessonId] {
                                    LessonCard(
                                        lessonId: lessonId,
                                        lessonInfo: lessonInfo,
                                        unitId: unitId,
                                        isSelected: selectedLesson == lessonId,
                                        selectedUnit: $selectedUnit,
                                        selectedLesson: $selectedLesson,
                                        showingLearningView: $showingLearningView
                                    )
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                Spacer()
            }
        }
        .navigationTitle("Unit Overview")
    }
    
    // Helper function to extract lesson number for sorting
    private func extractLessonNumber(from lessonId: String) -> Int {
        // Extract number from strings like "lesson_1", "lesson_10", etc.
        let components = lessonId.components(separatedBy: "_")
        if let lastComponent = components.last, let number = Int(lastComponent) {
            return number
        }
        return 0
    }
}

struct LessonCard: View {
    let lessonId: String
    let lessonInfo: LessonInfo
    let unitId: String
    let isSelected: Bool
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Header
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(lessonInfo.lessonName)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Text(lessonId.replacingOccurrences(of: "_", with: " ").capitalized)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                StatusBadge(status: .notStarted)
            }
            
            // Stats
            HStack {
                StatItem(icon: "doc.text", value: "\(lessonInfo.totalCards)", label: "cards")
                StatItem(icon: "clock", value: "\(lessonInfo.estimatedDuration / 60)", label: "min")
                StatItem(icon: "chart.line.uptrend.xyaxis", value: "0%", label: "mastery")
            }
            
            // Progress Bar
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Progress")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("0/\(lessonInfo.totalCards)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                ProgressView(value: 0.0, total: 1.0)
                    .tint(.gray)
            }
            
            // Action Button
            Button(action: {
                print("DEBUG: Start Learning clicked - Unit: \(unitId), Lesson: \(lessonId)")
                selectedUnit = unitId
                selectedLesson = lessonId
                showingLearningView = true
                print("DEBUG: State set - selectedUnit: \(selectedUnit), selectedLesson: \(selectedLesson), showingLearningView: \(showingLearningView)")
            }) {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Start Learning")
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
        }
        .padding()
        .background(isSelected ? Color.accentColor.opacity(0.1) : Color(NSColor.controlBackgroundColor))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(isSelected ? Color.accentColor : Color.clear, lineWidth: 2)
        )
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
    }
}

struct StatItem: View {
    let icon: String
    let value: String
    let label: String
    
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: icon)
                .font(.caption)
                .foregroundColor(.secondary)
            Text(value)
                .font(.caption)
                .fontWeight(.medium)
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

enum ProgressStatus: String, CaseIterable {
    case notStarted = "not_started"
    case inProgress = "in_progress"
    case completed = "completed"
    case mastered = "mastered"
    case needsReview = "needs_review"
    
    var displayName: String {
        switch self {
        case .notStarted: return "Not Started"
        case .inProgress: return "In Progress"
        case .completed: return "Completed"
        case .mastered: return "Mastered"
        case .needsReview: return "Needs Review"
        }
    }
}

struct StatusBadge: View {
    let status: ProgressStatus
    
    var body: some View {
        Text(status.displayName)
            .font(.caption2)
            .fontWeight(.medium)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(statusColor.opacity(0.2))
            .foregroundColor(statusColor)
            .cornerRadius(8)
    }
    
    private var statusColor: Color {
        switch status {
        case .notStarted: return .gray
        case .inProgress: return .blue
        case .completed: return .green
        case .mastered: return .orange
        case .needsReview: return .red
        }
    }
}

struct ContentTypeSelectionView: View {
    let unitId: String
    let lessonId: String
    let lessonInfo: LessonInfo
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    @Binding var selectedContentType: ContentType
    @EnvironmentObject var contentService: ContentService
    @State private var localSelectedContentType: ContentType?
    
    var availableContentTypes: [ContentType] {
        lessonInfo.contentTypes?.availableTypes ?? [.cards]
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            // Lesson Header
            VStack(alignment: .leading, spacing: 8) {
                Text(lessonInfo.lessonName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Choose Your Learning Path")
                    .font(.title2)
                    .foregroundColor(.secondary)
            }
            
            // Primary Learning Options
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 280), spacing: 16)
            ], spacing: 16) {
                ForEach(availableContentTypes.filter { isPrimaryType($0) }, id: \.self) { contentType in
                    ContentTypeCard(
                        contentType: contentType,
                        lessonInfo: lessonInfo,
                        isSelected: localSelectedContentType == contentType,
                        action: {
                            localSelectedContentType = contentType
                            startContent(type: contentType)
                        }
                    )
                }
            }
            
            // Secondary Options (Practice & Assessment)
            if availableContentTypes.contains(where: { isSecondaryType($0) }) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Practice & Assessment")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    LazyVGrid(columns: [
                        GridItem(.adaptive(minimum: 280), spacing: 16)
                    ], spacing: 16) {
                        ForEach(availableContentTypes.filter { isSecondaryType($0) }, id: \.self) { contentType in
                            ContentTypeCard(
                                contentType: contentType,
                                lessonInfo: lessonInfo,
                                isSelected: localSelectedContentType == contentType,
                                action: {
                                    localSelectedContentType = contentType
                                    startContent(type: contentType)
                                }
                            )
                        }
                    }
                }
            }
        }
    }
    
    private func isPrimaryType(_ type: ContentType) -> Bool {
        [.cards, .lessonGuide, .activity].contains(type)
    }
    
    private func isSecondaryType(_ type: ContentType) -> Bool {
        [.worksheet, .quiz, .lessonPlan].contains(type)
    }
    
    private func startContent(type: ContentType) {
        selectedContentType = type
        showingLearningView = true
    }
}

struct ContentTypeCard: View {
    let contentType: ContentType
    let lessonInfo: LessonInfo
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 12) {
                // Header with icon and title
                HStack {
                    Image(systemName: contentType.icon)
                        .font(.title2)
                        .foregroundColor(.accentColor)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(contentType.displayName)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Text(contentType.description)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                }
                
                // Content-specific details
                VStack(alignment: .leading, spacing: 4) {
                    switch contentType {
                    case .cards:
                        Text("\(lessonInfo.totalCards) cards")
                        Text("~\(lessonInfo.estimatedDuration / 60) minutes")
                    case .lessonGuide:
                        Text("45 min comprehensive guide")
                        Text("With examples & activities")
                    case .worksheet:
                        Text("15-20 practice problems")
                        Text("Printable PDF format")
                    case .quiz:
                        Text("Assessment questions")
                        Text("Progress tracking")
                    case .lessonPlan:
                        Text("Teaching outline")
                        Text("For educators")
                    case .activity:
                        Text("Interactive learning")
                        Text("Gamified experience")
                    }
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                // Best for section
                VStack(alignment: .leading, spacing: 2) {
                    Text("Best for:")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)
                    
                    let bestForText: String = {
                        switch contentType {
                        case .cards: return "• Daily progress\n• Quick review\n• Mobile learning"
                        case .lessonGuide: return "• First time learning\n• Deep understanding\n• Parent guidance"
                        case .worksheet: return "• Skill practice\n• Homework\n• Exam prep"
                        case .quiz: return "• Self-assessment\n• Progress check\n• Mastery verification"
                        case .lessonPlan: return "• Teaching\n• Tutoring\n• Lesson planning"
                        case .activity: return "• Engagement\n• Group learning\n• Making it fun"
                        }
                    }()
                    
                    Text(bestForText)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .lineLimit(nil)
                }
                
                Spacer()
                
                // Action button
                HStack {
                    Text(getActionText())
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Spacer()
                    Image(systemName: "arrow.right")
                        .font(.subheadline)
                }
                .foregroundColor(.accentColor)
            }
            .padding()
            .frame(maxWidth: .infinity, minHeight: 200, alignment: .topLeading)
            .background(isSelected ? Color.accentColor.opacity(0.1) : Color(NSColor.controlBackgroundColor))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? Color.accentColor : Color.clear, lineWidth: 2)
            )
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    private func getActionText() -> String {
        switch contentType {
        case .cards: return "Start Cards"
        case .lessonGuide: return "Open Lesson"
        case .worksheet: return "Download PDF"
        case .quiz: return "Take Quiz"
        case .lessonPlan: return "View Plan"
        case .activity: return "Play Game"
        }
    }
}

struct SelectUnitPrompt: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "book.closed")
                .font(.system(size: 60))
                .foregroundColor(.secondary)
            
            Text("Select a Unit")
                .font(.title)
                .fontWeight(.medium)
            
            Text("Choose a unit from the sidebar to view lessons and start learning.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: 400)
    }
}
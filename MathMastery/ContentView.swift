import SwiftUI

struct ContentView: View {
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    @EnvironmentObject var contentService: ContentService
    
    var body: some View {
        VStack {
            if let unitId = selectedUnit {
                UnitOverviewView(
                    unitId: unitId,
                    selectedUnit: $selectedUnit,
                    selectedLesson: $selectedLesson,
                    showingLearningView: $showingLearningView
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
                
                // Lessons Grid
                if let unit = unit {
                    LazyVGrid(columns: [
                        GridItem(.adaptive(minimum: 300), spacing: 16)
                    ], spacing: 16) {
                        // Show only selected lesson if one is selected, otherwise show all lessons
                        let lessonsToShow = selectedLesson != nil ? [selectedLesson!] : Array(unit.lessons.keys.sorted())
                        
                        ForEach(lessonsToShow, id: \.self) { lessonId in
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
                
                Spacer()
            }
        }
        .navigationTitle("Unit Overview")
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
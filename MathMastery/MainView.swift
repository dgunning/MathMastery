import SwiftUI

struct MainView: View {
    @StateObject private var contentService = ContentService()
    @State private var selectedUnit: String?
    @State private var selectedLesson: String?
    @State private var showingLearningView = false
    @State private var selectedContentType: ContentType = .cards
    
    var body: some View {
        NavigationSplitView {
            SidebarView(
                selectedUnit: $selectedUnit,
                selectedLesson: $selectedLesson,
                showingLearningView: $showingLearningView
            )
            .environmentObject(contentService)
        } content: {
            ContentView(
                selectedUnit: $selectedUnit,
                selectedLesson: $selectedLesson,
                showingLearningView: $showingLearningView,
                selectedContentType: $selectedContentType
            )
            .environmentObject(contentService)
        } detail: {
            Group {
                if showingLearningView,
                   let unitId = selectedUnit,
                   let lessonId = selectedLesson {
                    contentTypeView(unitId: unitId, lessonId: lessonId, contentType: selectedContentType)
                        .environmentObject(contentService)
                        .onAppear {
                            print("DEBUG: Content view appeared for unit: \(unitId), lesson: \(lessonId), type: \(selectedContentType)")
                        }
                } else {
                    WelcomeView()
                        .onAppear {
                            print("DEBUG: WelcomeView appeared - showingLearningView: \(showingLearningView), selectedUnit: \(String(describing: selectedUnit)), selectedLesson: \(String(describing: selectedLesson))")
                        }
                }
            }
        }
        .frame(minWidth: 1000, minHeight: 700)
        .task {
            await contentService.loadUnits()
        }
    }
    
    @ViewBuilder
    private func contentTypeView(unitId: String, lessonId: String, contentType: ContentType) -> some View {
        switch contentType {
        case .cards:
            LearningView(unitId: unitId, lessonId: lessonId)
        case .lessonGuide:
            FullLessonView(unitId: unitId, lessonId: lessonId)
        case .worksheet:
            WorksheetView(unitId: unitId, lessonId: lessonId)
        case .quiz:
            QuizView(unitId: unitId, quizType: "mid_unit")
        case .activity:
            ActivityView(unitId: unitId, lessonId: lessonId)
        case .lessonPlan:
            LessonPlanView(unitId: unitId, lessonId: lessonId)
        }
    }
}

struct SidebarView: View {
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    @EnvironmentObject var contentService: ContentService
    
    var body: some View {
        List {
            Section {
                DashboardRow()
            }
            
            ForEach(contentService.units, id: \.unitId) { unit in
                UnitSection(
                    unit: unit,
                    selectedUnit: $selectedUnit,
                    selectedLesson: $selectedLesson,
                    showingLearningView: $showingLearningView
                )
            }
        }
        .navigationTitle("Math Mastery")
        .listStyle(SidebarListStyle())
    }
}

struct DashboardRow: View {
    var body: some View {
        HStack {
            Image(systemName: "house")
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text("Dashboard")
                    .font(.headline)
                HStack {
                    Text("🔥 0")
                    Text("⚡ 0")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 2)
    }
}

struct UnitSection: View {
    let unit: UnitIndex
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    @State private var isExpanded = false
    
    var body: some View {
        DisclosureGroup(
            isExpanded: $isExpanded,
            content: {
                ForEach(Array(unit.lessons.keys.sorted { lessonId1, lessonId2 in
                    // Extract lesson numbers for proper sorting
                    let num1 = extractLessonNumber(from: lessonId1)
                    let num2 = extractLessonNumber(from: lessonId2)
                    return num1 < num2
                }), id: \.self) { lessonId in
                    if let lessonInfo = unit.lessons[lessonId] {
                        LessonRow(
                            lessonId: lessonId,
                            lessonInfo: lessonInfo,
                            unitId: unit.unitId,
                            selectedUnit: $selectedUnit,
                            selectedLesson: $selectedLesson,
                            showingLearningView: $showingLearningView
                        )
                    }
                }
            },
            label: {
                HStack {
                    Image(systemName: "folder")
                        .foregroundColor(.blue)
                    VStack(alignment: .leading) {
                        Text(unit.unitId.replacingOccurrences(of: "_", with: " ").capitalized)
                            .font(.headline)
                        ProgressView(value: 0.0, total: 1.0)
                            .frame(width: 120)
                    }
                    Spacer()
                }
            }
        )
        .onAppear {
            if selectedUnit == unit.unitId {
                isExpanded = true
            }
        }
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

struct LessonRow: View {
    let lessonId: String
    let lessonInfo: LessonInfo
    let unitId: String
    @Binding var selectedUnit: String?
    @Binding var selectedLesson: String?
    @Binding var showingLearningView: Bool
    
    var body: some View {
        Button(action: {
            selectedUnit = unitId
            selectedLesson = lessonId
            showingLearningView = false
        }) {
            HStack {
                Image(systemName: "doc.text")
                    .foregroundColor(.green)
                VStack(alignment: .leading, spacing: 2) {
                    Text(lessonInfo.lessonName)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    HStack {
                        Text("0%")
                            .font(.caption2)
                        Circle()
                            .fill(.blue)
                            .frame(width: 6, height: 6)
                        Text("\(lessonInfo.totalCards) cards")
                            .font(.caption2)
                            .foregroundColor(.secondary)
                    }
                }
                Spacer()
            }
        }
        .buttonStyle(PlainButtonStyle())
        .background(
            selectedLesson == lessonId ? Color.accentColor.opacity(0.2) : Color.clear
        )
        .cornerRadius(6)
    }
}
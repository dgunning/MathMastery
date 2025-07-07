import SwiftUI

// MARK: - Content Type Views

struct FullLessonView: View {
    let unitId: String
    let lessonId: String
    @EnvironmentObject var contentService: ContentService
    @State private var lessonContent: String?
    @State private var isLoading = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if isLoading {
                    ProgressView("Loading lesson...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if let content = lessonContent {
                    MarkdownView(content: content)
                        .padding()
                } else {
                    VStack(spacing: 16) {
                        Image(systemName: "doc.text.image")
                            .font(.system(size: 48))
                            .foregroundColor(.secondary)
                        
                        Text("Lesson Guide Not Available")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("This lesson doesn't have a full guide available yet.")
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
        .navigationTitle("Full Lesson")
        .task {
            lessonContent = await contentService.loadFullLesson(unitId: unitId, lessonId: lessonId)
            isLoading = false
        }
    }
}

struct WorksheetView: View {
    let unitId: String
    let lessonId: String
    @EnvironmentObject var contentService: ContentService
    @State private var worksheetContent: String?
    @State private var isLoading = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if isLoading {
                    ProgressView("Loading worksheet...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if let content = worksheetContent {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Button("Download PDF") {
                                // TODO: Implement PDF download
                                print("Download PDF requested")
                            }
                            .buttonStyle(.borderedProminent)
                            
                            Spacer()
                        }
                        .padding()
                        
                        MarkdownView(content: content)
                            .padding()
                    }
                } else {
                    VStack(spacing: 16) {
                        Image(systemName: "doc.text")
                            .font(.system(size: 48))
                            .foregroundColor(.secondary)
                        
                        Text("Worksheet Not Available")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("This lesson doesn't have a worksheet available yet.")
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
        .navigationTitle("Worksheet")
        .task {
            worksheetContent = await contentService.loadWorksheet(unitId: unitId, lessonId: lessonId)
            isLoading = false
        }
    }
}

struct QuizView: View {
    let unitId: String
    let quizType: String
    @EnvironmentObject var contentService: ContentService
    @State private var quizContent: String?
    @State private var isLoading = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if isLoading {
                    ProgressView("Loading quiz...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if let content = quizContent {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Button("Start Quiz") {
                                // TODO: Implement interactive quiz
                                print("Start quiz requested")
                            }
                            .buttonStyle(.borderedProminent)
                            
                            Spacer()
                        }
                        .padding()
                        
                        MarkdownView(content: content)
                            .padding()
                    }
                } else {
                    VStack(spacing: 16) {
                        Image(systemName: "checkmark.circle.badge.questionmark")
                            .font(.system(size: 48))
                            .foregroundColor(.secondary)
                        
                        Text("Quiz Not Available")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("This quiz is not available yet.")
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
        .navigationTitle("Quiz")
        .task {
            quizContent = await contentService.loadQuiz(unitId: unitId, type: quizType)
            isLoading = false
        }
    }
}

struct ActivityView: View {
    let unitId: String
    let lessonId: String
    
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "gamecontroller")
                .font(.system(size: 64))
                .foregroundColor(.accentColor)
            
            Text("Interactive Activity")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Coming Soon!")
                .font(.title2)
                .foregroundColor(.secondary)
            
            Text("Interactive activities and games for this lesson are under development.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            Button("Back to Lesson") {
                // TODO: Implement navigation back
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("Activity")
    }
}

struct LessonPlanView: View {
    let unitId: String
    let lessonId: String
    
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "list.clipboard")
                .font(.system(size: 64))
                .foregroundColor(.accentColor)
            
            Text("Lesson Plan")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("For Educators")
                .font(.title2)
                .foregroundColor(.secondary)
            
            Text("Detailed lesson plans for teachers and tutors are coming soon.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            Button("Back to Lesson") {
                // TODO: Implement navigation back
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("Lesson Plan")
    }
}

// MARK: - Simple Markdown View

struct MarkdownView: View {
    let content: String
    
    var body: some View {
        // Simple markdown-like rendering
        // In a full implementation, you'd use a proper markdown parser
        VStack(alignment: .leading, spacing: 12) {
            ForEach(parseMarkdown(content), id: \.id) { element in
                element.view
            }
        }
    }
    
    private func parseMarkdown(_ content: String) -> [MarkdownElement] {
        var elements: [MarkdownElement] = []
        let lines = content.components(separatedBy: .newlines)
        
        for (index, line) in lines.enumerated() {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            
            if trimmed.isEmpty {
                continue
            } else if trimmed.hasPrefix("# ") {
                elements.append(MarkdownElement(id: index, view: AnyView(
                    Text(String(trimmed.dropFirst(2)))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                )))
            } else if trimmed.hasPrefix("## ") {
                elements.append(MarkdownElement(id: index, view: AnyView(
                    Text(String(trimmed.dropFirst(3)))
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.vertical, 6)
                )))
            } else if trimmed.hasPrefix("### ") {
                elements.append(MarkdownElement(id: index, view: AnyView(
                    Text(String(trimmed.dropFirst(4)))
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.vertical, 4)
                )))
            } else if trimmed.hasPrefix("- ") || trimmed.hasPrefix("* ") {
                elements.append(MarkdownElement(id: index, view: AnyView(
                    HStack(alignment: .top, spacing: 8) {
                        Text("•")
                            .fontWeight(.bold)
                        Text(String(trimmed.dropFirst(2)))
                        Spacer()
                    }
                    .padding(.leading, 16)
                )))
            } else {
                elements.append(MarkdownElement(id: index, view: AnyView(
                    Text(trimmed)
                        .padding(.vertical, 2)
                )))
            }
        }
        
        return elements
    }
}

struct MarkdownElement {
    let id: Int
    let view: AnyView
}
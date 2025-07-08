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

// MARK: - Enhanced Markdown View

struct MarkdownView: View {
    let content: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                ForEach(parseMarkdown(content), id: \.id) { element in
                    element.view
                }
            }
            .padding()
        }
    }
    
    private func parseMarkdown(_ content: String) -> [MarkdownElement] {
        var elements: [MarkdownElement] = []
        let lines = content.components(separatedBy: .newlines)
        var currentParagraph = ""
        var id = 0
        var tableLines: [String] = []
        var inTable = false
        
        func addParagraphIfNeeded() {
            if !currentParagraph.isEmpty {
                elements.append(MarkdownElement(id: id, view: AnyView(
                    Text(LocalizedStringKey(processParagraph(currentParagraph)))
                        .padding(.vertical, 2)
                        .textSelection(.enabled)
                )))
                id += 1
                currentParagraph = ""
            }
        }
        
        func processTableIfNeeded() {
            if !tableLines.isEmpty {
                elements.append(MarkdownElement(id: id, view: AnyView(
                    MarkdownTableView(tableLines: tableLines)
                )))
                id += 1
                tableLines = []
                inTable = false
            }
        }
        
        for line in lines {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            
            // Check if this is a table row
            if trimmed.hasPrefix("|") && trimmed.hasSuffix("|") {
                addParagraphIfNeeded() // Add any pending paragraph
                inTable = true
                tableLines.append(trimmed)
                continue
            } else if inTable {
                // We were in a table but this line is not a table row
                processTableIfNeeded()
            }
            
            if trimmed.isEmpty {
                addParagraphIfNeeded()
                continue
            } else if trimmed.hasPrefix("# ") {
                addParagraphIfNeeded()
                elements.append(MarkdownElement(id: id, view: AnyView(
                    Text(LocalizedStringKey(processParagraph(String(trimmed.dropFirst(2)))))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                        .textSelection(.enabled)
                )))
                id += 1
            } else if trimmed.hasPrefix("## ") {
                addParagraphIfNeeded()
                elements.append(MarkdownElement(id: id, view: AnyView(
                    Text(LocalizedStringKey(processParagraph(String(trimmed.dropFirst(3)))))
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.vertical, 6)
                        .textSelection(.enabled)
                )))
                id += 1
            } else if trimmed.hasPrefix("### ") {
                addParagraphIfNeeded()
                elements.append(MarkdownElement(id: id, view: AnyView(
                    Text(LocalizedStringKey(processParagraph(String(trimmed.dropFirst(4)))))
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.vertical, 4)
                        .textSelection(.enabled)
                )))
                id += 1
            } else if trimmed.hasPrefix("- ") || trimmed.hasPrefix("* ") {
                addParagraphIfNeeded()
                elements.append(MarkdownElement(id: id, view: AnyView(
                    HStack(alignment: .top, spacing: 8) {
                        Text("•")
                            .fontWeight(.bold)
                        Text(LocalizedStringKey(processParagraph(String(trimmed.dropFirst(2)))))
                            .textSelection(.enabled)
                        Spacer()
                    }
                    .padding(.leading, 16)
                )))
                id += 1
            } else {
                if !currentParagraph.isEmpty {
                    currentParagraph += "\n"
                }
                currentParagraph += trimmed
            }
        }
        
        // Process any remaining elements
        addParagraphIfNeeded()
        processTableIfNeeded()
        
        return elements
    }
    
    // Process text with markdown formatting like **bold** and *italic*
    private func processParagraph(_ text: String) -> String {
        // Handle escaped characters
        var processed = text.replacingOccurrences(of: "\\\\\\\\**", with: "\\\\**") 
        processed = processed.replacingOccurrences(of: "\\\\*", with: "\\*") 
        
        // Process math formulas enclosed in $ symbols
        processed = processMathFormulas(processed)
        
        return processed
    }
    
    // Process mathematical formulas enclosed in $ symbols
    private func processMathFormulas(_ text: String) -> String {
        var result = text
        
        // Find all occurrences of $formula$ and replace with formatted text
        let pattern = "\\$(.*?)\\$"
        let regex = try? NSRegularExpression(pattern: pattern, options: [])
        let nsString = text as NSString
        let matches = regex?.matches(in: text, options: [], range: NSRange(location: 0, length: nsString.length)) ?? []
        
        // Process matches in reverse order to avoid messing up string indices
        for match in matches.reversed() {
            if match.numberOfRanges >= 2 {
                let formulaRange = match.range(at: 1)
                let formula = nsString.substring(with: formulaRange)
                
                // Replace the formula with a formatted version
                // For now, we'll just make it italic and monospaced to distinguish it
                let replacement = "*`\(formula)`*"
                
                let fullRange = match.range(at: 0)
                result = (result as NSString).replacingCharacters(in: fullRange, with: replacement)
            }
        }
        
        return result
    }
}

// View for rendering Markdown tables
struct MarkdownTableView: View {
    let tableLines: [String]
    
    var body: some View {
        let tableData = parseTableData()
        
        VStack(alignment: .leading, spacing: 0) {
            ForEach(0..<tableData.count, id: \.self) { rowIndex in
                HStack(spacing: 0) {
                    ForEach(0..<tableData[rowIndex].count, id: \.self) { colIndex in
                        Text(LocalizedStringKey(tableData[rowIndex][colIndex]))
                            .padding(8)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .textSelection(.enabled)
                            .background(rowIndex == 0 ? Color.gray.opacity(0.2) : (rowIndex % 2 == 1 ? Color.gray.opacity(0.1) : Color.clear))
                            .border(Color.gray.opacity(0.3), width: 0.5)
                    }
                }
            }
        }
        .padding(.vertical, 8)
    }
    
    // Parse table data from Markdown table format
    private func parseTableData() -> [[String]] {
        var result: [[String]] = []
        
        for (index, line) in tableLines.enumerated() {
            // Skip separator row (contains only | --- | --- |)
            if index == 1 && line.contains("---") {
                continue
            }
            
            // Split by | and remove empty first/last elements
            var cells = line.components(separatedBy: "|").map { $0.trimmingCharacters(in: .whitespaces) }
            if cells.first?.isEmpty == true { cells.removeFirst() }
            if cells.last?.isEmpty == true { cells.removeLast() }
            
            result.append(cells)
        }
        
        return result
    }
}

struct MarkdownElement {
    let id: Int
    let view: AnyView
}
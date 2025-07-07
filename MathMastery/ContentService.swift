import Foundation

class ContentService: ObservableObject {
    @Published var units: [UnitIndex] = []
    @Published var currentLesson: LessonSequence?
    @Published var currentCards: [LearningCard] = []
    @Published var currentLessonContent: LessonContent?
    @Published var isLoading = false
    @Published var error: String?
    
    private let contentBaseURL: URL
    private let docsBaseURL: URL
    
    init() {
        // For the app bundle, use the main bundle
        if let bundleURL = Bundle.main.url(forResource: "cards", withExtension: nil) {
            self.contentBaseURL = bundleURL
            print("DEBUG: Found cards bundle at: \(bundleURL)")
        } else {
            // Fallback to Documents directory
            let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
            self.contentBaseURL = URL(fileURLWithPath: documentsPath).appendingPathComponent("cards")
            print("DEBUG: Using fallback path: \(self.contentBaseURL)")
        }
        
        // Set up docs directory for lesson guides, worksheets, etc.
        if let bundleURL = Bundle.main.url(forResource: "docs", withExtension: nil) {
            self.docsBaseURL = bundleURL
            print("DEBUG: Found docs bundle at: \(bundleURL)")
        } else {
            let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
            self.docsBaseURL = URL(fileURLWithPath: documentsPath).appendingPathComponent("docs")
            print("DEBUG: Using fallback docs path: \(self.docsBaseURL)")
        }
    }
    
    private static func findCardsDirectory(in directory: URL) -> URL? {
        let fileManager = FileManager.default
        
        // Check if cards directory exists at this level
        let cardsPath = directory.appendingPathComponent("cards")
        var isDirectory: ObjCBool = false
        if fileManager.fileExists(atPath: cardsPath.path, isDirectory: &isDirectory) && isDirectory.boolValue {
            return cardsPath
        }
        
        // Recursively search subdirectories
        do {
            let contents = try fileManager.contentsOfDirectory(at: directory, includingPropertiesForKeys: [.isDirectoryKey])
            for item in contents {
                var isDir: ObjCBool = false
                if fileManager.fileExists(atPath: item.path, isDirectory: &isDir) && isDir.boolValue {
                    if let found = Self.findCardsDirectory(in: item) {
                        return found
                    }
                }
            }
        } catch {
            print("DEBUG: Error searching \(directory): \(error)")
        }
        
        return nil
    }
    
    private static func listDirectoryContents(_ directory: URL, prefix: String) {
        print("DEBUG: \(prefix) contents:")
        do {
            let contents = try FileManager.default.contentsOfDirectory(at: directory, includingPropertiesForKeys: [.isDirectoryKey])
            for item in contents {
                var isDir: ObjCBool = false
                let exists = FileManager.default.fileExists(atPath: item.path, isDirectory: &isDir)
                let type = isDir.boolValue ? "📁" : "📄"
                print("  \(type) \(item.lastPathComponent)")
                
                // If it's a directory, show its contents too (one level deep)
                if isDir.boolValue && exists {
                    do {
                        let subContents = try FileManager.default.contentsOfDirectory(at: item, includingPropertiesForKeys: nil)
                        for subItem in subContents.prefix(5) { // Limit to first 5 items
                            print("    - \(subItem.lastPathComponent)")
                        }
                        if subContents.count > 5 {
                            print("    ... and \(subContents.count - 5) more items")
                        }
                    } catch {
                        print("    (cannot list contents)")
                    }
                }
            }
        } catch {
            print("DEBUG: Error listing \(directory): \(error)")
        }
    }
    
    func loadUnits() async {
        await MainActor.run {
            isLoading = true
            error = nil
        }
        
        do {
            let units = try await loadUnitsFromDisk()
            await MainActor.run {
                self.units = units
                isLoading = false
                print("DEBUG: Loaded \(units.count) units")
                for unit in units {
                    print("DEBUG: Unit ID: \(unit.unitId), Lessons: \(unit.lessons.count)")
                }
            }
        } catch {
            await MainActor.run {
                self.error = error.localizedDescription
                isLoading = false
                print("DEBUG: Error loading units: \(error)")
            }
        }
    }
    
    func loadLesson(unitId: String, lessonId: String) async {
        print("DEBUG: ContentService.loadLesson called for unit: \(unitId), lesson: \(lessonId)")
        await MainActor.run {
            isLoading = true
            error = nil
        }
        
        do {
            let (sequence, cards) = try await loadLessonContent(unitId: unitId, lessonId: lessonId)
            await MainActor.run {
                self.currentLesson = sequence
                self.currentCards = cards
                isLoading = false
                print("DEBUG: Lesson loaded successfully - \(cards.count) cards")
            }
        } catch {
            await MainActor.run {
                self.error = error.localizedDescription
                isLoading = false
                print("DEBUG: Error loading lesson: \(error)")
            }
        }
    }
    
    private func loadUnitsFromDisk() async throws -> [UnitIndex] {
        var units: [UnitIndex] = []
        
        let fileManager = FileManager.default
        let contentsOfDirectory = try fileManager.contentsOfDirectory(at: contentBaseURL, includingPropertiesForKeys: nil)
        
        for url in contentsOfDirectory where url.hasDirectoryPath {
            let unitName = url.lastPathComponent
            let indexURL = url.appendingPathComponent("\(unitName)_index.json")
            
            if fileManager.fileExists(atPath: indexURL.path) {
                let data = try Data(contentsOf: indexURL)
                let unit = try JSONDecoder().decode(UnitIndex.self, from: data)
                units.append(unit)
            }
        }
        
        return units.sorted { $0.unitId < $1.unitId }
    }
    
    private func loadLessonContent(unitId: String, lessonId: String) async throws -> (LessonSequence, [LearningCard]) {
        print("DEBUG: Loading lesson content for unit: \(unitId), lesson: \(lessonId)")
        print("DEBUG: Base URL: \(contentBaseURL)")
        
        let lessonURL = contentBaseURL.appendingPathComponent(unitId).appendingPathComponent(lessonId)
        let sequenceURL = lessonURL.appendingPathComponent("\(lessonId)_sequence.json")
        print("DEBUG: Looking for sequence file at: \(sequenceURL)")
        
        // Load sequence
        let sequenceData = try Data(contentsOf: sequenceURL)
        let sequence = try JSONDecoder().decode(LessonSequence.self, from: sequenceData)
        print("DEBUG: Loaded sequence with \(sequence.sequence.count) cards: \(sequence.sequence)")
        
        // Load cards in sequence order
        var cards: [LearningCard] = []
        for cardId in sequence.sequence {
            let cardURL = lessonURL.appendingPathComponent("\(cardId).json")
            print("DEBUG: Loading card: \(cardId) from \(cardURL)")
            let cardData = try Data(contentsOf: cardURL)
            let card = try JSONDecoder().decode(LearningCard.self, from: cardData)
            cards.append(card)
        }
        
        print("DEBUG: Successfully loaded \(cards.count) cards")
        return (sequence, cards)
    }
    
    func getAvailableLessons(for unitId: String) -> [String: LessonInfo] {
        guard let unit = units.first(where: { $0.unitId == unitId }) else {
            return [:]
        }
        return unit.lessons
    }
    
    func getCard(by id: String) -> LearningCard? {
        return currentCards.first { $0.id == id }
    }
    
    func getNextCard(after cardId: String) -> LearningCard? {
        guard let currentIndex = currentCards.firstIndex(where: { $0.id == cardId }),
              currentIndex + 1 < currentCards.count else {
            return nil
        }
        return currentCards[currentIndex + 1]
    }
    
    func getPreviousCard(before cardId: String) -> LearningCard? {
        guard let currentIndex = currentCards.firstIndex(where: { $0.id == cardId }),
              currentIndex > 0 else {
            return nil
        }
        return currentCards[currentIndex - 1]
    }
    
    func getCardIndex(_ cardId: String) -> (current: Int, total: Int) {
        guard let index = currentCards.firstIndex(where: { $0.id == cardId }) else {
            return (0, currentCards.count)
        }
        return (index + 1, currentCards.count)
    }
    
    // MARK: - Multi-Content Type Support
    
    func loadIntegratedLessonContent(unitId: String, lessonId: String) async -> LessonContent? {
        do {
            // Get lesson info from unit index
            guard let unit = units.first(where: { $0.unitId == unitId }),
                  let lessonInfo = unit.lessons[lessonId] else {
                print("DEBUG: Could not find lesson info for \(unitId)/\(lessonId)")
                return nil
            }
            
            // Load cards if available
            var cards: [LearningCard]? = nil
            if lessonInfo.contentTypes?.cards == true {
                let (_, loadedCards) = try await loadLessonContent(unitId: unitId, lessonId: lessonId)
                cards = loadedCards
            }
            
            let lessonContent = LessonContent(
                lessonId: lessonId,
                lessonName: lessonInfo.lessonName,
                cards: cards,
                contentTypes: lessonInfo.contentTypes ?? ContentTypes(
                    cards: true,
                    lessonGuide: false,
                    lessonPlan: false,
                    worksheet: false,
                    quiz: false,
                    activity: false
                )
            )
            
            await MainActor.run {
                self.currentLessonContent = lessonContent
            }
            
            return lessonContent
        } catch {
            print("DEBUG: Error loading lesson content: \(error)")
            return nil
        }
    }
    
    func loadFullLesson(unitId: String, lessonId: String) async -> String? {
        // Convert lesson_1_1 to lesson1, lesson_1_2 to lesson2, etc.
        let lessonNumber = lessonId.replacingOccurrences(of: "lesson_", with: "").replacingOccurrences(of: "_", with: "")
        
        let lessonContentURL = docsBaseURL
            .appendingPathComponent("learning_plans")
            .appendingPathComponent(unitId)
            .appendingPathComponent("lesson_content")
            .appendingPathComponent("lesson\(lessonNumber)_guide.md")
        
        do {
            let content = try String(contentsOf: lessonContentURL, encoding: .utf8)
            print("DEBUG: Loaded full lesson from: \(lessonContentURL)")
            return content
        } catch {
            print("DEBUG: Could not load full lesson from \(lessonContentURL): \(error)")
            return nil
        }
    }
    
    func loadWorksheet(unitId: String, lessonId: String) async -> String? {
        let lessonNumber = lessonId.replacingOccurrences(of: "lesson_", with: "").replacingOccurrences(of: "_", with: "")
        
        let worksheetURL = docsBaseURL
            .appendingPathComponent("learning_plans")
            .appendingPathComponent(unitId)
            .appendingPathComponent("worksheets")
            .appendingPathComponent("lesson\(lessonNumber)_worksheet.md")
        
        do {
            let content = try String(contentsOf: worksheetURL, encoding: .utf8)
            print("DEBUG: Loaded worksheet from: \(worksheetURL)")
            return content
        } catch {
            print("DEBUG: Could not load worksheet from \(worksheetURL): \(error)")
            return nil
        }
    }
    
    func loadQuiz(unitId: String, type: String) async -> String? {
        let quizURL = docsBaseURL
            .appendingPathComponent("learning_plans")
            .appendingPathComponent(unitId)
            .appendingPathComponent("quizzes")
            .appendingPathComponent("\(unitId)_\(type)_quiz.md")
        
        do {
            let content = try String(contentsOf: quizURL, encoding: .utf8)
            print("DEBUG: Loaded quiz from: \(quizURL)")
            return content
        } catch {
            print("DEBUG: Could not load quiz from \(quizURL): \(error)")
            return nil
        }
    }
    
    func getAvailableContentTypes(unitId: String, lessonId: String) -> [ContentType] {
        guard let unit = units.first(where: { $0.unitId == unitId }),
              let lessonInfo = unit.lessons[lessonId],
              let contentTypes = lessonInfo.contentTypes else {
            return [.cards] // Default to cards only
        }
        return contentTypes.availableTypes
    }
}

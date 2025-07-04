import Foundation

class ContentService: ObservableObject {
    @Published var units: [UnitIndex] = []
    @Published var currentLesson: LessonSequence?
    @Published var currentCards: [LearningCard] = []
    @Published var isLoading = false
    @Published var error: String?
    
    private let contentBaseURL: URL
    
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
}

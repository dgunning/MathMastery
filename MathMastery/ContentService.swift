import Foundation

struct MasterIndex: Codable {
    let units: [UnitIndex]
}

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
        // For the app bundle, use the main bundle - look for CourseContent directory first
        if let bundleURL = Bundle.main.url(forResource: "CourseContent", withExtension: nil) {
            self.contentBaseURL = bundleURL
            print("DEBUG: Found CourseContent bundle at: \(bundleURL)")
        } else {
            // Fallback to Documents directory
            let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
            self.contentBaseURL = URL(fileURLWithPath: documentsPath).appendingPathComponent("CourseContent")
            print("DEBUG: Using fallback path: \(self.contentBaseURL)")
        }
        
        // Print all bundle resources for debugging
        print("DEBUG: Bundle resources:")
        if let resourceURLs = Bundle.main.urls(forResourcesWithExtension: nil, subdirectory: nil) {
            for url in resourceURLs.prefix(20) { // Limit to first 20 to avoid flooding
                print("  - \(url.lastPathComponent)")
            }
            if resourceURLs.count > 20 {
                print("  ... and \(resourceURLs.count - 20) more items")
            }
        } else {
            print("  No resources found in bundle")
        }
        
        // Set up CourseContent directory for lesson guides, worksheets, etc.
        if let bundleURL = Bundle.main.url(forResource: "CourseContent", withExtension: nil) {
            self.docsBaseURL = bundleURL
            print("DEBUG: Found CourseContent bundle at: \(bundleURL)")
            
            // Try to list contents of CourseContent directory
            do {
                let contents = try FileManager.default.contentsOfDirectory(at: bundleURL, includingPropertiesForKeys: nil)
                print("DEBUG: Contents of CourseContent directory:")
                for item in contents.prefix(10) {
                    print("  - \(item.lastPathComponent)")
                }
                if contents.count > 10 {
                    print("  ... and \(contents.count - 10) more items")
                }
            } catch {
                print("DEBUG: Error listing CourseContent directory: \(error)")
            }
        } else {
            // Fallback to Documents directory
            let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
            self.docsBaseURL = URL(fileURLWithPath: documentsPath).appendingPathComponent("CourseContent")
            print("DEBUG: Using fallback CourseContent path: \(self.docsBaseURL)")
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
        // First try to load from master index file
        if let masterIndexURL = try await findMasterIndexFile() {
            print("DEBUG: Loading units from master index file: \(masterIndexURL)")
            return try await loadFromMasterIndex(url: masterIndexURL)
        }
        
        // Fall back to original method of loading individual unit index files
        print("DEBUG: Falling back to loading individual unit index files")
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
    
    private func findMasterIndexFile() async throws -> URL? {
        // Try several strategies to find the master index file
        
        // Strategy 1: Look directly in the CourseContent directory in resources
        if let courseContentURL = Bundle.main.url(forResource: "CourseContent/units_index", withExtension: "json") {
            print("DEBUG: Found master index at CourseContent/units_index.json: \(courseContentURL)")
            return courseContentURL
        }
        
        // Strategy 2: Get CourseContent directory and look for units_index.json inside it
        if let courseContentDir = Bundle.main.url(forResource: "CourseContent", withExtension: nil) {
            let indexPath = courseContentDir.appendingPathComponent("units_index.json")
            if FileManager.default.fileExists(atPath: indexPath.path) {
                print("DEBUG: Found master index inside CourseContent dir: \(indexPath)")
                return indexPath
            }
        }
        
        // Strategy 3: Check in docsBaseURL if it exists
        let masterIndexPath = docsBaseURL.appendingPathComponent("units_index.json")
        if FileManager.default.fileExists(atPath: masterIndexPath.path) {
            print("DEBUG: Found master index in docsBaseURL: \(masterIndexPath)")
            return masterIndexPath
        }
        
        // Strategy 4: Look for units_index.json at the app bundle root
        if let rootIndexPath = Bundle.main.url(forResource: "units_index", withExtension: "json") {
            print("DEBUG: Found master index at root: \(rootIndexPath)")
            return rootIndexPath
        }
        
        print("DEBUG: No master index file found after trying all locations")
        print("DEBUG: Listing app bundle root contents for debugging:")
        let bundleURL = Bundle.main.bundleURL
        Self.listDirectoryContents(bundleURL, prefix: "Bundle root")
        
        if let resourcesURL = Bundle.main.resourceURL {
            Self.listDirectoryContents(resourcesURL, prefix: "Resources directory")
        } else {
            print("DEBUG: No resources URL available in bundle")
        }
        
        return nil
    }
    
    private func loadFromMasterIndex(url: URL) async throws -> [UnitIndex] {
        let data = try Data(contentsOf: url)
        let masterIndex = try JSONDecoder().decode(MasterIndex.self, from: data)
        return masterIndex.units
    }
    
    private func loadLessonContent(unitId: String, lessonId: String) async throws -> (LessonSequence, [LearningCard]) {
        print("DEBUG: Loading lesson content for unit: \(unitId), lesson: \(lessonId)")
        print("DEBUG: Base URL: \(contentBaseURL)")
        
        // Convert unit_1 to unit1 format by removing underscore
        let normalizedUnitId = unitId.replacingOccurrences(of: "_", with: "")
        let lessonURL = contentBaseURL.appendingPathComponent("units").appendingPathComponent(normalizedUnitId).appendingPathComponent("cards").appendingPathComponent(lessonId)
        
        // Try multiple formats for sequence file to ensure consistency
        var sequenceURL = lessonURL.appendingPathComponent("\(lessonId)_sequence.json")
        print("DEBUG: Looking for sequence file at primary location: \(sequenceURL)")
        
        // If the primary format doesn't exist, try alternative formats
        if !FileManager.default.fileExists(atPath: sequenceURL.path) {
            // Try format: lesson_15_sequence.json (where lessonId is "lesson_15")
            let alternativeURL = lessonURL.appendingPathComponent("lesson_\(lessonId.replacingOccurrences(of: "lesson_", with: ""))_sequence.json")
            print("DEBUG: Primary sequence file not found. Trying alternative location: \(alternativeURL)")
            
            if FileManager.default.fileExists(atPath: alternativeURL.path) {
                sequenceURL = alternativeURL
            }
        }
        
        // Load sequence
        print("DEBUG: Loading sequence from: \(sequenceURL)")
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
        print("DEBUG: Loading lesson guide for unitId: \(unitId), lessonId: \(lessonId)")
        
        // Normalize unit ID (remove underscore if present)
        let normalizedUnitId = unitId.replacingOccurrences(of: "unit_", with: "unit")
        
        // Normalize lesson ID to ensure consistent format (e.g., "lesson_1")
        let normalizedLessonId = normalizeLessonId(lessonId)
        print("DEBUG: Normalized lesson ID: \(normalizedLessonId)")
        
        // First try using the mapping file if it exists
        do {
            let mappingFileURL = docsBaseURL
                .appendingPathComponent("units")
                .appendingPathComponent(normalizedUnitId)
                .appendingPathComponent("config")
                .appendingPathComponent("lesson_guide_mapping.json")
            
            print("DEBUG: Looking for mapping file at: \(mappingFileURL.path)")
            
            if FileManager.default.fileExists(atPath: mappingFileURL.path) {
                let mappingData = try Data(contentsOf: mappingFileURL)
                let mappingDict = try JSONSerialization.jsonObject(with: mappingData) as? [String: String]
                
                if let filename = mappingDict?[normalizedLessonId] {
                    print("DEBUG: Found lesson guide filename in mapping: \(filename)")
                    
                    let lessonGuideURL = docsBaseURL
                        .appendingPathComponent("units")
                        .appendingPathComponent(normalizedUnitId)
                        .appendingPathComponent("lessons")
                        .appendingPathComponent(filename)
                    
                    if FileManager.default.fileExists(atPath: lessonGuideURL.path) {
                        print("DEBUG: Loading lesson guide from mapped file: \(lessonGuideURL.path)")
                        let content = try String(contentsOf: lessonGuideURL, encoding: .utf8)
                        return content
                    }
                }
            } else {
                print("DEBUG: Mapping file not found, falling back to pattern matching")
            }
        } catch {
            print("DEBUG: Error using mapping file: \(error), falling back to pattern matching")
        }
        
        // Extract lesson number for pattern matching fallback
        var lessonNumber: String
        if normalizedLessonId.contains("_") {
            let components = normalizedLessonId.components(separatedBy: "_")
            if let lastComponent = components.last, let number = Int(lastComponent) {
                lessonNumber = String(number)
            } else {
                lessonNumber = normalizedLessonId.replacingOccurrences(of: "lesson_", with: "")
            }
        } else {
            lessonNumber = normalizedLessonId.replacingOccurrences(of: "lesson", with: "")
        }
        
        // Fallback to pattern matching if mapping file approach failed
        let possibleFilenames = [
            "^lesson\(lessonNumber)_.*_guide\\.md$",
            "^lesson\(lessonNumber)_guide\\.md$"
        ]
        
        let lessonContentDir = docsBaseURL
            .appendingPathComponent("units")
            .appendingPathComponent(normalizedUnitId)
            .appendingPathComponent("lessons")
        
        print("DEBUG: Falling back to pattern matching in directory: \(lessonContentDir.path)")
        
        if let lessonFiles = try? FileManager.default.contentsOfDirectory(at: lessonContentDir, includingPropertiesForKeys: nil) {
            print("DEBUG: Found \(lessonFiles.count) files in lessons directory")
            
            for file in lessonFiles {
                let filename = file.lastPathComponent
                
                for pattern in possibleFilenames {
                    if filename.range(of: pattern, options: .regularExpression) != nil {
                        print("DEBUG: Found matching lesson guide with pattern: \(filename)")
                        do {
                            let content = try String(contentsOf: file, encoding: .utf8)
                            return content
                        } catch {
                            print("DEBUG: Error reading lesson guide file: \(error)")
                        }
                    }
                }
            }
        }
        
        print("DEBUG: Could not find any matching lesson guide for lesson \(normalizedLessonId) in unit \(normalizedUnitId)")
        return nil
    }
    
    func loadWorksheet(unitId: String, lessonId: String) async -> String? {
        print("DEBUG: Loading worksheet for unitId: \(unitId), lessonId: \(lessonId)")
        
        // Normalize unit ID (remove underscore if present)
        let normalizedUnitId = unitId.replacingOccurrences(of: "unit_", with: "unit")
        
        // Normalize lesson ID to ensure consistent format (e.g., "lesson_1")
        let normalizedLessonId = normalizeLessonId(lessonId)
        print("DEBUG: Normalized lesson ID: \(normalizedLessonId)")
        
        // First try using the mapping file if it exists
        do {
            let mappingFileURL = docsBaseURL
                .appendingPathComponent("units")
                .appendingPathComponent(normalizedUnitId)
                .appendingPathComponent("config")
                .appendingPathComponent("worksheet_mapping.json")
            
            print("DEBUG: Looking for mapping file at: \(mappingFileURL.path)")
            
            if FileManager.default.fileExists(atPath: mappingFileURL.path) {
                let mappingData = try Data(contentsOf: mappingFileURL)
                let mappingDict = try JSONSerialization.jsonObject(with: mappingData) as? [String: String]
                
                if let filename = mappingDict?[normalizedLessonId] {
                    print("DEBUG: Found worksheet filename in mapping: \(filename)")
                    
                    let worksheetURL = docsBaseURL
                        .appendingPathComponent("units")
                        .appendingPathComponent(normalizedUnitId)
                        .appendingPathComponent("worksheets")
                        .appendingPathComponent(filename)
                    
                    if FileManager.default.fileExists(atPath: worksheetURL.path) {
                        print("DEBUG: Loading worksheet from mapped file: \(worksheetURL.path)")
                        let content = try String(contentsOf: worksheetURL, encoding: .utf8)
                        return content
                    }
                }
            } else {
                print("DEBUG: Mapping file not found, falling back to pattern matching")
            }
        } catch {
            print("DEBUG: Error using mapping file: \(error), falling back to pattern matching")
        }
        
        // Extract lesson number for pattern matching fallback
        var lessonNumber: String
        if normalizedLessonId.contains("_") {
            let components = normalizedLessonId.components(separatedBy: "_")
            if let lastComponent = components.last, let number = Int(lastComponent) {
                lessonNumber = String(number)
            } else {
                lessonNumber = normalizedLessonId.replacingOccurrences(of: "lesson_", with: "")
            }
        } else {
            lessonNumber = normalizedLessonId.replacingOccurrences(of: "lesson", with: "")
        }
        
        // Fallback to pattern matching if mapping file approach failed
        let possibleFilenames = [
            "^lesson\(lessonNumber)_.*_worksheet\\.md$",
            "^lesson\(lessonNumber)_worksheet\\.md$"
        ]
        
        let worksheetsDir = docsBaseURL
            .appendingPathComponent("units")
            .appendingPathComponent(normalizedUnitId)
            .appendingPathComponent("worksheets")
        
        print("DEBUG: Falling back to pattern matching in directory: \(worksheetsDir.path)")
        
        if let worksheetFiles = try? FileManager.default.contentsOfDirectory(at: worksheetsDir, includingPropertiesForKeys: nil) {
            print("DEBUG: Found \(worksheetFiles.count) files in worksheets directory")
            
            for file in worksheetFiles {
                let filename = file.lastPathComponent
                
                for pattern in possibleFilenames {
                    if filename.range(of: pattern, options: .regularExpression) != nil {
                        print("DEBUG: Found matching worksheet with pattern: \(filename)")
                        do {
                            let content = try String(contentsOf: file, encoding: .utf8)
                            return content
                        } catch {
                            print("DEBUG: Error reading worksheet file: \(error)")
                        }
                    }
                }
            }
        }
        
        print("DEBUG: Could not find any matching worksheet for lesson \(normalizedLessonId) in unit \(normalizedUnitId)")
        return nil
    }
    
    func loadQuiz(unitId: String, type: String) async -> String? {
        print("DEBUG: Loading quiz for unitId: \(unitId), type: \(type)")
        
        // Normalize unit ID (remove underscore if present)
        let normalizedUnitId = unitId.replacingOccurrences(of: "unit_", with: "unit")
        
        // First try using the mapping file if it exists
        do {
            let mappingFileURL = docsBaseURL
                .appendingPathComponent("units")
                .appendingPathComponent(normalizedUnitId)
                .appendingPathComponent("config")
                .appendingPathComponent("quiz_mapping.json")
            
            print("DEBUG: Looking for quiz mapping file at: \(mappingFileURL.path)")
            
            if FileManager.default.fileExists(atPath: mappingFileURL.path) {
                let mappingData = try Data(contentsOf: mappingFileURL)
                let mappingDict = try JSONSerialization.jsonObject(with: mappingData) as? [String: String]
                
                if let filename = mappingDict?[type] {
                    print("DEBUG: Found quiz filename in mapping: \(filename)")
                    
                    let quizURL = docsBaseURL
                        .appendingPathComponent("units")
                        .appendingPathComponent(normalizedUnitId)
                        .appendingPathComponent("quizzes")
                        .appendingPathComponent(filename)
                    
                    if FileManager.default.fileExists(atPath: quizURL.path) {
                        print("DEBUG: Loading quiz from mapped file: \(quizURL.path)")
                        let content = try String(contentsOf: quizURL, encoding: .utf8)
                        return content
                    }
                }
            } else {
                print("DEBUG: Quiz mapping file not found, falling back to pattern matching")
            }
        } catch {
            print("DEBUG: Error using quiz mapping file: \(error), falling back to pattern matching")
        }
        
        // Fallback to pattern matching if mapping file approach failed
        let possibleFilenames = [
            // Standard pattern with unit ID
            "^\(normalizedUnitId)_\(type)_quiz\\.md$",
            // Alternative pattern
            "^.*_\(type)_quiz\\.md$"
        ]
        
        let quizzesDir = docsBaseURL
            .appendingPathComponent("units")
            .appendingPathComponent(normalizedUnitId)
            .appendingPathComponent("quizzes")
        
        print("DEBUG: Falling back to pattern matching in directory: \(quizzesDir.path)")
        
        if let quizFiles = try? FileManager.default.contentsOfDirectory(at: quizzesDir, includingPropertiesForKeys: nil) {
            print("DEBUG: Found \(quizFiles.count) files in quizzes directory")
            
            for file in quizFiles {
                let filename = file.lastPathComponent
                
                for pattern in possibleFilenames {
                    if filename.range(of: pattern, options: .regularExpression) != nil {
                        print("DEBUG: Found matching quiz with pattern: \(filename)")
                        do {
                            let content = try String(contentsOf: file, encoding: .utf8)
                            return content
                        } catch {
                            print("DEBUG: Error reading quiz file: \(error)")
                        }
                    }
                }
            }
        }
        
        print("DEBUG: Could not find any matching \(type) quiz in unit \(normalizedUnitId)")
        return nil
    }
    
    func getAvailableContentTypes(unitId: String, lessonId: String) -> [ContentType] {
        guard let unit = units.first(where: { $0.unitId == unitId }),
              let lessonInfo = unit.lessons[lessonId],
              let contentTypes = lessonInfo.contentTypes else {
            return [.cards] // Default to cards only
        }
        return contentTypes.availableTypes
    }
    
    // MARK: - Helper Methods
    
    private func normalizeLessonId(_ lessonId: String) -> String {
        // Ensure lesson ID is in format "lesson_X" or "lesson_X_Y" for fractional lessons
        if lessonId.hasPrefix("lesson_") {
            return lessonId
        } else if lessonId.hasPrefix("lesson") {
            // Convert "lesson1" or "lesson1_5" to "lesson_1" or "lesson_1_5"
            let numberPart = lessonId.replacingOccurrences(of: "lesson", with: "")
            // Check if it's already in the format "1_5"
            if numberPart.contains("_") {
                return "lesson_\(numberPart)"
            } else {
                return "lesson_\(numberPart)"
            }
        } else if lessonId.contains("_") {
            // Handle case where it might be just "1_5"
            return "lesson_\(lessonId)"
        } else {
            // If it's just a number or something else, prefix with "lesson_"
            return "lesson_\(lessonId)"
        }
    }
}

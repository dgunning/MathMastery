import Foundation

// MARK: - Card Types
enum CardType: String, Codable, CaseIterable {
    case conceptIntro = "concept_intro"
    case workedExample = "worked_example"
    case practice = "practice"
    case connection = "connection"
    case quickCheck = "quick_check"
    
    var displayName: String {
        switch self {
        case .conceptIntro: return "Concept Introduction"
        case .workedExample: return "Worked Example"
        case .practice: return "Practice"
        case .connection: return "Connection"
        case .quickCheck: return "Quick Check"
        }
    }
    
    var icon: String {
        switch self {
        case .conceptIntro: return "lightbulb"
        case .workedExample: return "list.number"
        case .practice: return "pencil"
        case .connection: return "link"
        case .quickCheck: return "checkmark.circle"
        }
    }
}

// MARK: - Interactive Elements
struct InteractiveElement: Codable {
    let type: String?
    let prompt: String?
    let question: String?
    let options: [String]?
    let correct: Int?
    let inputType: String?
    
    enum CodingKeys: String, CodingKey {
        case type, prompt, question, options, correct
        case inputType = "input_type"
    }
}

// MARK: - Card Content
struct CardContent: Codable {
    private let _explanation: FlexibleString?
    private let _example: FlexibleString?
    private let _keyPoint: FlexibleString?
    private let _problem: FlexibleString?
    private let _solution: FlexibleString?
    let steps: [String]?
    let stepExplanations: [String]?
    let hints: [String]?
    
    var explanation: String? { _explanation?.stringValue }
    var example: String? { _example?.stringValue }
    var keyPoint: String? { _keyPoint?.stringValue }
    var problem: String? { _problem?.stringValue }
    var solution: String? { _solution?.stringValue }
    
    enum CodingKeys: String, CodingKey {
        case _explanation = "explanation"
        case _example = "example"
        case _problem = "problem"
        case _solution = "solution"
        case steps, hints
        case _keyPoint = "key_point"
        case stepExplanations = "step_explanations"
    }
}

// Helper to decode both strings and arrays as strings
enum FlexibleString: Codable {
    case string(String)
    case array([String])
    
    var stringValue: String? {
        switch self {
        case .string(let str):
            return str.isEmpty ? nil : str
        case .array(let arr):
            return arr.isEmpty ? nil : arr.joined(separator: "\n")
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let string = try? container.decode(String.self) {
            self = .string(string)
        } else if let array = try? container.decode([String].self) {
            self = .array(array)
        } else {
            throw DecodingError.typeMismatch(FlexibleString.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Expected String or [String]"))
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let string):
            try container.encode(string)
        case .array(let array):
            try container.encode(array)
        }
    }
}

// MARK: - Learning Card Model
struct LearningCard: Codable, Identifiable {
    let id: String
    let unitId: String
    let lessonId: String
    let type: CardType
    let title: String
    let duration: Int // seconds
    let content: CardContent
    let interactive: InteractiveElement?
    
    enum CodingKeys: String, CodingKey {
        case id, type, title, duration, content, interactive
        case unitId = "unit_id"
        case lessonId = "lesson_id"
    }
    
    // Computed properties for UI
    var formattedDuration: String {
        let minutes = duration / 60
        let seconds = duration % 60
        if minutes > 0 {
            return "\(minutes)m \(seconds)s"
        } else {
            return "\(seconds)s"
        }
    }
    
    var hasInteractive: Bool {
        interactive != nil
    }
    
    var primaryContent: String {
        content.explanation ?? content.problem ?? title
    }
}

// MARK: - Lesson Sequence
struct LessonSequence: Codable {
    let unitId: String
    let lessonId: String
    let lessonName: String
    let totalCards: Int
    let estimatedDuration: Int
    let sequence: [String] // card IDs in order
    let cardTypes: [String: Int]
    
    enum CodingKeys: String, CodingKey {
        case lessonName = "lesson_name"
        case totalCards = "total_cards"
        case estimatedDuration = "estimated_duration"
        case cardTypes = "card_types"
        case unitId = "unit_id"
        case lessonId = "lesson_id"
        case sequence
    }
}

// MARK: - Unit Index
struct UnitIndex: Codable {
    let unitId: String
    let lessons: [String: LessonInfo]
    let totalLessons: Int
    let totalCards: Int
    let totalDuration: Int
    
    enum CodingKeys: String, CodingKey {
        case unitId = "unit_id"
        case lessons
        case totalLessons = "total_lessons"
        case totalCards = "total_cards"
        case totalDuration = "total_duration"
    }
}

struct LessonInfo: Codable {
    let lessonName: String
    let totalCards: Int
    let estimatedDuration: Int
    let cardTypes: [String: Int]
    
    enum CodingKeys: String, CodingKey {
        case lessonName = "lesson_name"
        case totalCards = "total_cards"
        case estimatedDuration = "estimated_duration"
        case cardTypes = "card_types"
    }
}
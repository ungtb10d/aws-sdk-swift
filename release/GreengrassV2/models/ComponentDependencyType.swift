// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ComponentDependencyType {
    case hard
    case soft
    case sdkUnknown(String)
}

extension ComponentDependencyType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ComponentDependencyType] {
        return [
            .hard,
            .soft,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .hard: return "HARD"
        case .soft: return "SOFT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ComponentDependencyType(rawValue: rawValue) ?? ComponentDependencyType.sdkUnknown(rawValue)
    }
}
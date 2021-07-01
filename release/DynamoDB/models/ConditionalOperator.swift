// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ConditionalOperator {
    case and
    case or
    case sdkUnknown(String)
}

extension ConditionalOperator : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ConditionalOperator] {
        return [
            .and,
            .or,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .and: return "AND"
        case .or: return "OR"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ConditionalOperator(rawValue: rawValue) ?? ConditionalOperator.sdkUnknown(rawValue)
    }
}
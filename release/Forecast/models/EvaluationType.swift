// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum EvaluationType {
    case computed
    case summary
    case sdkUnknown(String)
}

extension EvaluationType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [EvaluationType] {
        return [
            .computed,
            .summary,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .computed: return "COMPUTED"
        case .summary: return "SUMMARY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = EvaluationType(rawValue: rawValue) ?? EvaluationType.sdkUnknown(rawValue)
    }
}
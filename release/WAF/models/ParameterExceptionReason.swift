// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ParameterExceptionReason {
    case illegalArgument
    case illegalCombination
    case invalidOption
    case invalidTagKey
    case sdkUnknown(String)
}

extension ParameterExceptionReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ParameterExceptionReason] {
        return [
            .illegalArgument,
            .illegalCombination,
            .invalidOption,
            .invalidTagKey,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .illegalArgument: return "ILLEGAL_ARGUMENT"
        case .illegalCombination: return "ILLEGAL_COMBINATION"
        case .invalidOption: return "INVALID_OPTION"
        case .invalidTagKey: return "INVALID_TAG_KEY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ParameterExceptionReason(rawValue: rawValue) ?? ParameterExceptionReason.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RedactionOutput {
    case redacted
    case redactedAndUnredacted
    case sdkUnknown(String)
}

extension RedactionOutput : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RedactionOutput] {
        return [
            .redacted,
            .redactedAndUnredacted,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .redacted: return "redacted"
        case .redactedAndUnredacted: return "redacted_and_unredacted"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RedactionOutput(rawValue: rawValue) ?? RedactionOutput.sdkUnknown(rawValue)
    }
}
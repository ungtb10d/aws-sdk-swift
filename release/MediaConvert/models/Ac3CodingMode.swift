// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Dolby Digital coding mode. Determines number of channels.
public enum Ac3CodingMode {
    case codingMode10
    case codingMode11
    case codingMode20
    case codingMode32Lfe
    case sdkUnknown(String)
}

extension Ac3CodingMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Ac3CodingMode] {
        return [
            .codingMode10,
            .codingMode11,
            .codingMode20,
            .codingMode32Lfe,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .codingMode10: return "CODING_MODE_1_0"
        case .codingMode11: return "CODING_MODE_1_1"
        case .codingMode20: return "CODING_MODE_2_0"
        case .codingMode32Lfe: return "CODING_MODE_3_2_LFE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Ac3CodingMode(rawValue: rawValue) ?? Ac3CodingMode.sdkUnknown(rawValue)
    }
}
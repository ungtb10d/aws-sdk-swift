// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FirelensConfigurationType {
    case fluentbit
    case fluentd
    case sdkUnknown(String)
}

extension FirelensConfigurationType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FirelensConfigurationType] {
        return [
            .fluentbit,
            .fluentd,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fluentbit: return "fluentbit"
        case .fluentd: return "fluentd"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FirelensConfigurationType(rawValue: rawValue) ?? FirelensConfigurationType.sdkUnknown(rawValue)
    }
}
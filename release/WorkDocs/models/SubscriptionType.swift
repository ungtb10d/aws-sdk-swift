// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SubscriptionType {
    case all
    case sdkUnknown(String)
}

extension SubscriptionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SubscriptionType] {
        return [
            .all,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .all: return "ALL"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SubscriptionType(rawValue: rawValue) ?? SubscriptionType.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RecommendationTarget {
    case crossInstanceFamily
    case sameInstanceFamily
    case sdkUnknown(String)
}

extension RecommendationTarget : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RecommendationTarget] {
        return [
            .crossInstanceFamily,
            .sameInstanceFamily,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .crossInstanceFamily: return "CROSS_INSTANCE_FAMILY"
        case .sameInstanceFamily: return "SAME_INSTANCE_FAMILY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RecommendationTarget(rawValue: rawValue) ?? RecommendationTarget.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum MarketType {
    case onDemand
    case spot
    case sdkUnknown(String)
}

extension MarketType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MarketType] {
        return [
            .onDemand,
            .spot,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .onDemand: return "ON_DEMAND"
        case .spot: return "SPOT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MarketType(rawValue: rawValue) ?? MarketType.sdkUnknown(rawValue)
    }
}
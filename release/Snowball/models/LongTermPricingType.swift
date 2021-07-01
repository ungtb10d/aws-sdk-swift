// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LongTermPricingType {
    case oneYear
    case threeYear
    case sdkUnknown(String)
}

extension LongTermPricingType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LongTermPricingType] {
        return [
            .oneYear,
            .threeYear,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .oneYear: return "OneYear"
        case .threeYear: return "ThreeYear"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LongTermPricingType(rawValue: rawValue) ?? LongTermPricingType.sdkUnknown(rawValue)
    }
}
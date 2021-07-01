// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum OpsItemRelatedItemsFilterOperator {
    case equal
    case sdkUnknown(String)
}

extension OpsItemRelatedItemsFilterOperator : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [OpsItemRelatedItemsFilterOperator] {
        return [
            .equal,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .equal: return "Equal"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = OpsItemRelatedItemsFilterOperator(rawValue: rawValue) ?? OpsItemRelatedItemsFilterOperator.sdkUnknown(rawValue)
    }
}
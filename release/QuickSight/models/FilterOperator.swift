// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FilterOperator {
    case stringequals
    case sdkUnknown(String)
}

extension FilterOperator : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FilterOperator] {
        return [
            .stringequals,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .stringequals: return "StringEquals"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FilterOperator(rawValue: rawValue) ?? FilterOperator.sdkUnknown(rawValue)
    }
}
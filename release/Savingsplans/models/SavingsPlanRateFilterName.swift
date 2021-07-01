// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SavingsPlanRateFilterName {
    case instanceType
    case operation
    case productDescription
    case productType
    case region
    case serviceCode
    case tenancy
    case usageType
    case sdkUnknown(String)
}

extension SavingsPlanRateFilterName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SavingsPlanRateFilterName] {
        return [
            .instanceType,
            .operation,
            .productDescription,
            .productType,
            .region,
            .serviceCode,
            .tenancy,
            .usageType,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .instanceType: return "instanceType"
        case .operation: return "operation"
        case .productDescription: return "productDescription"
        case .productType: return "productType"
        case .region: return "region"
        case .serviceCode: return "serviceCode"
        case .tenancy: return "tenancy"
        case .usageType: return "usageType"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SavingsPlanRateFilterName(rawValue: rawValue) ?? SavingsPlanRateFilterName.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SavingsPlanPaymentOption {
    case allUpfront
    case noUpfront
    case partialUpfront
    case sdkUnknown(String)
}

extension SavingsPlanPaymentOption : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SavingsPlanPaymentOption] {
        return [
            .allUpfront,
            .noUpfront,
            .partialUpfront,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .allUpfront: return "All Upfront"
        case .noUpfront: return "No Upfront"
        case .partialUpfront: return "Partial Upfront"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SavingsPlanPaymentOption(rawValue: rawValue) ?? SavingsPlanPaymentOption.sdkUnknown(rawValue)
    }
}
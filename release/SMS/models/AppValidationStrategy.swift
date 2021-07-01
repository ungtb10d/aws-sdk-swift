// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AppValidationStrategy {
    case ssm
    case sdkUnknown(String)
}

extension AppValidationStrategy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AppValidationStrategy] {
        return [
            .ssm,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .ssm: return "SSM"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AppValidationStrategy(rawValue: rawValue) ?? AppValidationStrategy.sdkUnknown(rawValue)
    }
}
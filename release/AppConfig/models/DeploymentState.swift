// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DeploymentState {
    case baking
    case complete
    case deploying
    case rolledBack
    case rollingBack
    case validating
    case sdkUnknown(String)
}

extension DeploymentState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DeploymentState] {
        return [
            .baking,
            .complete,
            .deploying,
            .rolledBack,
            .rollingBack,
            .validating,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .baking: return "BAKING"
        case .complete: return "COMPLETE"
        case .deploying: return "DEPLOYING"
        case .rolledBack: return "ROLLED_BACK"
        case .rollingBack: return "ROLLING_BACK"
        case .validating: return "VALIDATING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DeploymentState(rawValue: rawValue) ?? DeploymentState.sdkUnknown(rawValue)
    }
}
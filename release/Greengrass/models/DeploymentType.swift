// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
public enum DeploymentType {
    case forceresetdeployment
    case newdeployment
    case redeployment
    case resetdeployment
    case sdkUnknown(String)
}

extension DeploymentType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DeploymentType] {
        return [
            .forceresetdeployment,
            .newdeployment,
            .redeployment,
            .resetdeployment,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .forceresetdeployment: return "ForceResetDeployment"
        case .newdeployment: return "NewDeployment"
        case .redeployment: return "Redeployment"
        case .resetdeployment: return "ResetDeployment"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DeploymentType(rawValue: rawValue) ?? DeploymentType.sdkUnknown(rawValue)
    }
}
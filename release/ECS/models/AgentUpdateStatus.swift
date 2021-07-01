// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AgentUpdateStatus {
    case failed
    case pending
    case staged
    case staging
    case updated
    case updating
    case sdkUnknown(String)
}

extension AgentUpdateStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AgentUpdateStatus] {
        return [
            .failed,
            .pending,
            .staged,
            .staging,
            .updated,
            .updating,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .failed: return "FAILED"
        case .pending: return "PENDING"
        case .staged: return "STAGED"
        case .staging: return "STAGING"
        case .updated: return "UPDATED"
        case .updating: return "UPDATING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AgentUpdateStatus(rawValue: rawValue) ?? AgentUpdateStatus.sdkUnknown(rawValue)
    }
}
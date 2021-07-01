// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PolicyType {
    case aiservicesOptOutPolicy
    case backupPolicy
    case serviceControlPolicy
    case tagPolicy
    case sdkUnknown(String)
}

extension PolicyType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PolicyType] {
        return [
            .aiservicesOptOutPolicy,
            .backupPolicy,
            .serviceControlPolicy,
            .tagPolicy,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .aiservicesOptOutPolicy: return "AISERVICES_OPT_OUT_POLICY"
        case .backupPolicy: return "BACKUP_POLICY"
        case .serviceControlPolicy: return "SERVICE_CONTROL_POLICY"
        case .tagPolicy: return "TAG_POLICY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PolicyType(rawValue: rawValue) ?? PolicyType.sdkUnknown(rawValue)
    }
}
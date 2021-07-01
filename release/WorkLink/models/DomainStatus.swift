// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DomainStatus {
    case active
    case associating
    case disassociated
    case disassociating
    case failedToAssociate
    case failedToDisassociate
    case inactive
    case pendingValidation
    case sdkUnknown(String)
}

extension DomainStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DomainStatus] {
        return [
            .active,
            .associating,
            .disassociated,
            .disassociating,
            .failedToAssociate,
            .failedToDisassociate,
            .inactive,
            .pendingValidation,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .active: return "ACTIVE"
        case .associating: return "ASSOCIATING"
        case .disassociated: return "DISASSOCIATED"
        case .disassociating: return "DISASSOCIATING"
        case .failedToAssociate: return "FAILED_TO_ASSOCIATE"
        case .failedToDisassociate: return "FAILED_TO_DISASSOCIATE"
        case .inactive: return "INACTIVE"
        case .pendingValidation: return "PENDING_VALIDATION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DomainStatus(rawValue: rawValue) ?? DomainStatus.sdkUnknown(rawValue)
    }
}
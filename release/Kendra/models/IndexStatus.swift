// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum IndexStatus {
    case active
    case creating
    case deleting
    case failed
    case systemUpdating
    case updating
    case sdkUnknown(String)
}

extension IndexStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [IndexStatus] {
        return [
            .active,
            .creating,
            .deleting,
            .failed,
            .systemUpdating,
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
        case .active: return "ACTIVE"
        case .creating: return "CREATING"
        case .deleting: return "DELETING"
        case .failed: return "FAILED"
        case .systemUpdating: return "SYSTEM_UPDATING"
        case .updating: return "UPDATING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = IndexStatus(rawValue: rawValue) ?? IndexStatus.sdkUnknown(rawValue)
    }
}
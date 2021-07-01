// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum BotStatus {
    case available
    case creating
    case deleting
    case failed
    case importing
    case inactive
    case versioning
    case sdkUnknown(String)
}

extension BotStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [BotStatus] {
        return [
            .available,
            .creating,
            .deleting,
            .failed,
            .importing,
            .inactive,
            .versioning,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .available: return "Available"
        case .creating: return "Creating"
        case .deleting: return "Deleting"
        case .failed: return "Failed"
        case .importing: return "Importing"
        case .inactive: return "Inactive"
        case .versioning: return "Versioning"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = BotStatus(rawValue: rawValue) ?? BotStatus.sdkUnknown(rawValue)
    }
}
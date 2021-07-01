// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AttachmentStatus {
    case creating
    case deleting
    case ready
    case scaling
    case sdkUnknown(String)
}

extension AttachmentStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AttachmentStatus] {
        return [
            .creating,
            .deleting,
            .ready,
            .scaling,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .creating: return "CREATING"
        case .deleting: return "DELETING"
        case .ready: return "READY"
        case .scaling: return "SCALING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AttachmentStatus(rawValue: rawValue) ?? AttachmentStatus.sdkUnknown(rawValue)
    }
}
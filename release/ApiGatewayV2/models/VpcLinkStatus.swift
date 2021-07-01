// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The status of the VPC link.</p>
public enum VpcLinkStatus {
    case available
    case deleting
    case failed
    case inactive
    case pending
    case sdkUnknown(String)
}

extension VpcLinkStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [VpcLinkStatus] {
        return [
            .available,
            .deleting,
            .failed,
            .inactive,
            .pending,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .available: return "AVAILABLE"
        case .deleting: return "DELETING"
        case .failed: return "FAILED"
        case .inactive: return "INACTIVE"
        case .pending: return "PENDING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = VpcLinkStatus(rawValue: rawValue) ?? VpcLinkStatus.sdkUnknown(rawValue)
    }
}
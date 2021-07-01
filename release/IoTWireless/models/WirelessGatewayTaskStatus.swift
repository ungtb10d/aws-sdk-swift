// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum WirelessGatewayTaskStatus {
    case completed
    case failed
    case firstRetry
    case inProgress
    case pending
    case secondRetry
    case sdkUnknown(String)
}

extension WirelessGatewayTaskStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [WirelessGatewayTaskStatus] {
        return [
            .completed,
            .failed,
            .firstRetry,
            .inProgress,
            .pending,
            .secondRetry,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .completed: return "COMPLETED"
        case .failed: return "FAILED"
        case .firstRetry: return "FIRST_RETRY"
        case .inProgress: return "IN_PROGRESS"
        case .pending: return "PENDING"
        case .secondRetry: return "SECOND_RETRY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = WirelessGatewayTaskStatus(rawValue: rawValue) ?? WirelessGatewayTaskStatus.sdkUnknown(rawValue)
    }
}
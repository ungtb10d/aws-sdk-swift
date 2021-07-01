// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum StopStatus {
    case pending
    case succeeded
    case sdkUnknown(String)
}

extension StopStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [StopStatus] {
        return [
            .pending,
            .succeeded,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .pending: return "Pending"
        case .succeeded: return "Succeeded"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = StopStatus(rawValue: rawValue) ?? StopStatus.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SnapshotState {
    case completed
    case error
    case pending
    case sdkUnknown(String)
}

extension SnapshotState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SnapshotState] {
        return [
            .completed,
            .error,
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
        case .completed: return "completed"
        case .error: return "error"
        case .pending: return "pending"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SnapshotState(rawValue: rawValue) ?? SnapshotState.sdkUnknown(rawValue)
    }
}
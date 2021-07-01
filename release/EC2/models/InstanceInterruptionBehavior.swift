// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum InstanceInterruptionBehavior {
    case hibernate
    case stop
    case terminate
    case sdkUnknown(String)
}

extension InstanceInterruptionBehavior : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [InstanceInterruptionBehavior] {
        return [
            .hibernate,
            .stop,
            .terminate,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .hibernate: return "hibernate"
        case .stop: return "stop"
        case .terminate: return "terminate"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = InstanceInterruptionBehavior(rawValue: rawValue) ?? InstanceInterruptionBehavior.sdkUnknown(rawValue)
    }
}
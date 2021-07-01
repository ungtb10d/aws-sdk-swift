// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RouteState {
    case active
    case blackhole
    case sdkUnknown(String)
}

extension RouteState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RouteState] {
        return [
            .active,
            .blackhole,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .active: return "active"
        case .blackhole: return "blackhole"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RouteState(rawValue: rawValue) ?? RouteState.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DashboardUIState {
    case collapsed
    case expanded
    case sdkUnknown(String)
}

extension DashboardUIState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DashboardUIState] {
        return [
            .collapsed,
            .expanded,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .collapsed: return "COLLAPSED"
        case .expanded: return "EXPANDED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DashboardUIState(rawValue: rawValue) ?? DashboardUIState.sdkUnknown(rawValue)
    }
}
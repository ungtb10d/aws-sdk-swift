// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ProxySessionStatus {
    case closed
    case inprogress
    case `open`
    case sdkUnknown(String)
}

extension ProxySessionStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ProxySessionStatus] {
        return [
            .closed,
            .inprogress,
            .open,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .closed: return "Closed"
        case .inprogress: return "InProgress"
        case .open: return "Open"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ProxySessionStatus(rawValue: rawValue) ?? ProxySessionStatus.sdkUnknown(rawValue)
    }
}
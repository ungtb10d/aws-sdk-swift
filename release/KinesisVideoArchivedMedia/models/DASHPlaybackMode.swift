// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DASHPlaybackMode {
    case live
    case liveReplay
    case onDemand
    case sdkUnknown(String)
}

extension DASHPlaybackMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DASHPlaybackMode] {
        return [
            .live,
            .liveReplay,
            .onDemand,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .live: return "LIVE"
        case .liveReplay: return "LIVE_REPLAY"
        case .onDemand: return "ON_DEMAND"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DASHPlaybackMode(rawValue: rawValue) ?? DASHPlaybackMode.sdkUnknown(rawValue)
    }
}
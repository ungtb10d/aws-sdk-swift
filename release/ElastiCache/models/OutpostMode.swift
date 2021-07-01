// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum OutpostMode {
    case crossOutpost
    case singleOutpost
    case sdkUnknown(String)
}

extension OutpostMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [OutpostMode] {
        return [
            .crossOutpost,
            .singleOutpost,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .crossOutpost: return "cross-outpost"
        case .singleOutpost: return "single-outpost"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = OutpostMode(rawValue: rawValue) ?? OutpostMode.sdkUnknown(rawValue)
    }
}
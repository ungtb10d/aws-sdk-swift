// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AccessPropertyValue {
    case allow
    case deny
    case sdkUnknown(String)
}

extension AccessPropertyValue : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AccessPropertyValue] {
        return [
            .allow,
            .deny,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .allow: return "ALLOW"
        case .deny: return "DENY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AccessPropertyValue(rawValue: rawValue) ?? AccessPropertyValue.sdkUnknown(rawValue)
    }
}
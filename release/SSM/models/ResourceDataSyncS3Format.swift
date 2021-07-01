// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ResourceDataSyncS3Format {
    case jsonSerde
    case sdkUnknown(String)
}

extension ResourceDataSyncS3Format : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ResourceDataSyncS3Format] {
        return [
            .jsonSerde,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .jsonSerde: return "JsonSerDe"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ResourceDataSyncS3Format(rawValue: rawValue) ?? ResourceDataSyncS3Format.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum GeoSpatialCountryCode {
    case us
    case sdkUnknown(String)
}

extension GeoSpatialCountryCode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [GeoSpatialCountryCode] {
        return [
            .us,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .us: return "US"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = GeoSpatialCountryCode(rawValue: rawValue) ?? GeoSpatialCountryCode.sdkUnknown(rawValue)
    }
}
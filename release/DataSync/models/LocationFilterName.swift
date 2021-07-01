// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LocationFilterName {
    case creationtime
    case locationtype
    case locationuri
    case sdkUnknown(String)
}

extension LocationFilterName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LocationFilterName] {
        return [
            .creationtime,
            .locationtype,
            .locationuri,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .creationtime: return "CreationTime"
        case .locationtype: return "LocationType"
        case .locationuri: return "LocationUri"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LocationFilterName(rawValue: rawValue) ?? LocationFilterName.sdkUnknown(rawValue)
    }
}
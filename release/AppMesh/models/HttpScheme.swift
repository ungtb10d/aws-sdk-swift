// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum HttpScheme {
    case http
    case https
    case sdkUnknown(String)
}

extension HttpScheme : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [HttpScheme] {
        return [
            .http,
            .https,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .http: return "http"
        case .https: return "https"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = HttpScheme(rawValue: rawValue) ?? HttpScheme.sdkUnknown(rawValue)
    }
}
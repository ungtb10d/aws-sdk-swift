// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum OfferingClass {
    case convertible
    case standard
    case sdkUnknown(String)
}

extension OfferingClass : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [OfferingClass] {
        return [
            .convertible,
            .standard,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .convertible: return "CONVERTIBLE"
        case .standard: return "STANDARD"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = OfferingClass(rawValue: rawValue) ?? OfferingClass.sdkUnknown(rawValue)
    }
}
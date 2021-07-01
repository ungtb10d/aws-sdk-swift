// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Whether or not AWS includes resource IDs in the report. </p>
public enum SchemaElement {
    case resources
    case sdkUnknown(String)
}

extension SchemaElement : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SchemaElement] {
        return [
            .resources,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .resources: return "RESOURCES"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SchemaElement(rawValue: rawValue) ?? SchemaElement.sdkUnknown(rawValue)
    }
}
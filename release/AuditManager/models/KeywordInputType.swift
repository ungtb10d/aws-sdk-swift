// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum KeywordInputType {
    case selectFromList
    case sdkUnknown(String)
}

extension KeywordInputType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [KeywordInputType] {
        return [
            .selectFromList,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .selectFromList: return "SELECT_FROM_LIST"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = KeywordInputType(rawValue: rawValue) ?? KeywordInputType.sdkUnknown(rawValue)
    }
}
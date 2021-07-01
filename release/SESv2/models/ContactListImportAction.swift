// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ContactListImportAction {
    case delete
    case put
    case sdkUnknown(String)
}

extension ContactListImportAction : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ContactListImportAction] {
        return [
            .delete,
            .put,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .delete: return "DELETE"
        case .put: return "PUT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ContactListImportAction(rawValue: rawValue) ?? ContactListImportAction.sdkUnknown(rawValue)
    }
}
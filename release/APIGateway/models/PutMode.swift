// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PutMode {
    case merge
    case overwrite
    case sdkUnknown(String)
}

extension PutMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PutMode] {
        return [
            .merge,
            .overwrite,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .merge: return "merge"
        case .overwrite: return "overwrite"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PutMode(rawValue: rawValue) ?? PutMode.sdkUnknown(rawValue)
    }
}
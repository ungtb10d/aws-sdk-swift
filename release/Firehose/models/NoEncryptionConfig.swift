// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum NoEncryptionConfig {
    case noencryption
    case sdkUnknown(String)
}

extension NoEncryptionConfig : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [NoEncryptionConfig] {
        return [
            .noencryption,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .noencryption: return "NoEncryption"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = NoEncryptionConfig(rawValue: rawValue) ?? NoEncryptionConfig.sdkUnknown(rawValue)
    }
}
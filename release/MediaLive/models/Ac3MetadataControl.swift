// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Ac3 Metadata Control
public enum Ac3MetadataControl {
    case followInput
    case useConfigured
    case sdkUnknown(String)
}

extension Ac3MetadataControl : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Ac3MetadataControl] {
        return [
            .followInput,
            .useConfigured,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .followInput: return "FOLLOW_INPUT"
        case .useConfigured: return "USE_CONFIGURED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Ac3MetadataControl(rawValue: rawValue) ?? Ac3MetadataControl.sdkUnknown(rawValue)
    }
}
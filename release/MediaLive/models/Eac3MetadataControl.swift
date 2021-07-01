// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Eac3 Metadata Control
public enum Eac3MetadataControl {
    case followInput
    case useConfigured
    case sdkUnknown(String)
}

extension Eac3MetadataControl : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Eac3MetadataControl] {
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
        self = Eac3MetadataControl(rawValue: rawValue) ?? Eac3MetadataControl.sdkUnknown(rawValue)
    }
}
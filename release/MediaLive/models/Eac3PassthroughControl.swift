// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Eac3 Passthrough Control
public enum Eac3PassthroughControl {
    case noPassthrough
    case whenPossible
    case sdkUnknown(String)
}

extension Eac3PassthroughControl : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Eac3PassthroughControl] {
        return [
            .noPassthrough,
            .whenPossible,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .noPassthrough: return "NO_PASSTHROUGH"
        case .whenPossible: return "WHEN_POSSIBLE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Eac3PassthroughControl(rawValue: rawValue) ?? Eac3PassthroughControl.sdkUnknown(rawValue)
    }
}
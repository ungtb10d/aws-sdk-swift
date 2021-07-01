// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Choose how the service does stereo downmixing.
public enum Eac3AtmosStereoDownmix {
    case dpl2
    case notIndicated
    case stereo
    case surround
    case sdkUnknown(String)
}

extension Eac3AtmosStereoDownmix : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Eac3AtmosStereoDownmix] {
        return [
            .dpl2,
            .notIndicated,
            .stereo,
            .surround,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .dpl2: return "DPL2"
        case .notIndicated: return "NOT_INDICATED"
        case .stereo: return "STEREO"
        case .surround: return "SURROUND"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Eac3AtmosStereoDownmix(rawValue: rawValue) ?? Eac3AtmosStereoDownmix.sdkUnknown(rawValue)
    }
}
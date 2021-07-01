// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
public enum F4vMoovPlacement {
    case normal
    case progressiveDownload
    case sdkUnknown(String)
}

extension F4vMoovPlacement : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [F4vMoovPlacement] {
        return [
            .normal,
            .progressiveDownload,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .normal: return "NORMAL"
        case .progressiveDownload: return "PROGRESSIVE_DOWNLOAD"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = F4vMoovPlacement(rawValue: rawValue) ?? F4vMoovPlacement.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// H264 Scan Type
public enum H264ScanType {
    case interlaced
    case progressive
    case sdkUnknown(String)
}

extension H264ScanType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [H264ScanType] {
        return [
            .interlaced,
            .progressive,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .interlaced: return "INTERLACED"
        case .progressive: return "PROGRESSIVE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = H264ScanType(rawValue: rawValue) ?? H264ScanType.sdkUnknown(rawValue)
    }
}
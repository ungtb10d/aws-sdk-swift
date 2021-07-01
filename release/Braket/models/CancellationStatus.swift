// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum CancellationStatus {
    case cancelled
    case cancelling
    case sdkUnknown(String)
}

extension CancellationStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CancellationStatus] {
        return [
            .cancelled,
            .cancelling,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .cancelled: return "CANCELLED"
        case .cancelling: return "CANCELLING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CancellationStatus(rawValue: rawValue) ?? CancellationStatus.sdkUnknown(rawValue)
    }
}
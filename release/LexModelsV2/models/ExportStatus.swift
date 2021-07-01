// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ExportStatus {
    case completed
    case deleting
    case failed
    case inprogress
    case sdkUnknown(String)
}

extension ExportStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ExportStatus] {
        return [
            .completed,
            .deleting,
            .failed,
            .inprogress,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .completed: return "Completed"
        case .deleting: return "Deleting"
        case .failed: return "Failed"
        case .inprogress: return "InProgress"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ExportStatus(rawValue: rawValue) ?? ExportStatus.sdkUnknown(rawValue)
    }
}
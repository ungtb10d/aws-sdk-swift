// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SourceRepository {
    case codecommit
    case s3
    case sdkUnknown(String)
}

extension SourceRepository : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SourceRepository] {
        return [
            .codecommit,
            .s3,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .codecommit: return "CodeCommit"
        case .s3: return "S3"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SourceRepository(rawValue: rawValue) ?? SourceRepository.sdkUnknown(rawValue)
    }
}
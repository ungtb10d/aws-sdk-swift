// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ArtifactsType {
    case codepipeline
    case noArtifacts
    case s3
    case sdkUnknown(String)
}

extension ArtifactsType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ArtifactsType] {
        return [
            .codepipeline,
            .noArtifacts,
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
        case .codepipeline: return "CODEPIPELINE"
        case .noArtifacts: return "NO_ARTIFACTS"
        case .s3: return "S3"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ArtifactsType(rawValue: rawValue) ?? ArtifactsType.sdkUnknown(rawValue)
    }
}
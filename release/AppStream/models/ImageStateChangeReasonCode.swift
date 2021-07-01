// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ImageStateChangeReasonCode {
    case imageBuilderNotAvailable
    case imageCopyFailure
    case internalError
    case sdkUnknown(String)
}

extension ImageStateChangeReasonCode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ImageStateChangeReasonCode] {
        return [
            .imageBuilderNotAvailable,
            .imageCopyFailure,
            .internalError,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .imageBuilderNotAvailable: return "IMAGE_BUILDER_NOT_AVAILABLE"
        case .imageCopyFailure: return "IMAGE_COPY_FAILURE"
        case .internalError: return "INTERNAL_ERROR"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ImageStateChangeReasonCode(rawValue: rawValue) ?? ImageStateChangeReasonCode.sdkUnknown(rawValue)
    }
}
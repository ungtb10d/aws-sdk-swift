// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ErrorCode {
    case internalServiceException
    case invalidParameterException
    case sdkUnknown(String)
}

extension ErrorCode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ErrorCode] {
        return [
            .internalServiceException,
            .invalidParameterException,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .internalServiceException: return "InternalServiceException"
        case .invalidParameterException: return "InvalidParameterException"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ErrorCode(rawValue: rawValue) ?? ErrorCode.sdkUnknown(rawValue)
    }
}
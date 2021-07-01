// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Enum listing out all supported destination phone number verification statuses. The following enum values are
///         supported.
///         1. PENDING : The destination phone number is pending verification.
///         2. VERIFIED : The destination phone number is verified.
public enum SMSSandboxPhoneNumberVerificationStatus {
    case pending
    case verified
    case sdkUnknown(String)
}

extension SMSSandboxPhoneNumberVerificationStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SMSSandboxPhoneNumberVerificationStatus] {
        return [
            .pending,
            .verified,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .pending: return "Pending"
        case .verified: return "Verified"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SMSSandboxPhoneNumberVerificationStatus(rawValue: rawValue) ?? SMSSandboxPhoneNumberVerificationStatus.sdkUnknown(rawValue)
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum IdentityType {
    case group
    case iam
    case user
    case sdkUnknown(String)
}

extension IdentityType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [IdentityType] {
        return [
            .group,
            .iam,
            .user,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .group: return "GROUP"
        case .iam: return "IAM"
        case .user: return "USER"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = IdentityType(rawValue: rawValue) ?? IdentityType.sdkUnknown(rawValue)
    }
}
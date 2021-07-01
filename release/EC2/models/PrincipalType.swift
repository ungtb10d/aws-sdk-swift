// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PrincipalType {
    case account
    case all
    case organizationunit
    case role
    case service
    case user
    case sdkUnknown(String)
}

extension PrincipalType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PrincipalType] {
        return [
            .account,
            .all,
            .organizationunit,
            .role,
            .service,
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
        case .account: return "Account"
        case .all: return "All"
        case .organizationunit: return "OrganizationUnit"
        case .role: return "Role"
        case .service: return "Service"
        case .user: return "User"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PrincipalType(rawValue: rawValue) ?? PrincipalType.sdkUnknown(rawValue)
    }
}
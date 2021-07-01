// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DomainAvailability {
    case available
    case availablePreorder
    case availableReserved
    case dontKnow
    case reserved
    case unavailable
    case unavailablePremium
    case unavailableRestricted
    case sdkUnknown(String)
}

extension DomainAvailability : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DomainAvailability] {
        return [
            .available,
            .availablePreorder,
            .availableReserved,
            .dontKnow,
            .reserved,
            .unavailable,
            .unavailablePremium,
            .unavailableRestricted,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .available: return "AVAILABLE"
        case .availablePreorder: return "AVAILABLE_PREORDER"
        case .availableReserved: return "AVAILABLE_RESERVED"
        case .dontKnow: return "DONT_KNOW"
        case .reserved: return "RESERVED"
        case .unavailable: return "UNAVAILABLE"
        case .unavailablePremium: return "UNAVAILABLE_PREMIUM"
        case .unavailableRestricted: return "UNAVAILABLE_RESTRICTED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DomainAvailability(rawValue: rawValue) ?? DomainAvailability.sdkUnknown(rawValue)
    }
}
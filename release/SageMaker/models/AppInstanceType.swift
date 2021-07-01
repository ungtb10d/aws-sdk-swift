// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AppInstanceType {
    case mlC512xlarge
    case mlC518xlarge
    case mlC524xlarge
    case mlC52xlarge
    case mlC54xlarge
    case mlC59xlarge
    case mlC5Large
    case mlC5Xlarge
    case mlG4dn12xlarge
    case mlG4dn16xlarge
    case mlG4dn2xlarge
    case mlG4dn4xlarge
    case mlG4dn8xlarge
    case mlG4dnXlarge
    case mlM512xlarge
    case mlM516xlarge
    case mlM524xlarge
    case mlM52xlarge
    case mlM54xlarge
    case mlM58xlarge
    case mlM5Large
    case mlM5Xlarge
    case mlP316xlarge
    case mlP32xlarge
    case mlP38xlarge
    case mlT32xlarge
    case mlT3Large
    case mlT3Medium
    case mlT3Micro
    case mlT3Small
    case mlT3Xlarge
    case system
    case sdkUnknown(String)
}

extension AppInstanceType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AppInstanceType] {
        return [
            .mlC512xlarge,
            .mlC518xlarge,
            .mlC524xlarge,
            .mlC52xlarge,
            .mlC54xlarge,
            .mlC59xlarge,
            .mlC5Large,
            .mlC5Xlarge,
            .mlG4dn12xlarge,
            .mlG4dn16xlarge,
            .mlG4dn2xlarge,
            .mlG4dn4xlarge,
            .mlG4dn8xlarge,
            .mlG4dnXlarge,
            .mlM512xlarge,
            .mlM516xlarge,
            .mlM524xlarge,
            .mlM52xlarge,
            .mlM54xlarge,
            .mlM58xlarge,
            .mlM5Large,
            .mlM5Xlarge,
            .mlP316xlarge,
            .mlP32xlarge,
            .mlP38xlarge,
            .mlT32xlarge,
            .mlT3Large,
            .mlT3Medium,
            .mlT3Micro,
            .mlT3Small,
            .mlT3Xlarge,
            .system,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .mlC512xlarge: return "ml.c5.12xlarge"
        case .mlC518xlarge: return "ml.c5.18xlarge"
        case .mlC524xlarge: return "ml.c5.24xlarge"
        case .mlC52xlarge: return "ml.c5.2xlarge"
        case .mlC54xlarge: return "ml.c5.4xlarge"
        case .mlC59xlarge: return "ml.c5.9xlarge"
        case .mlC5Large: return "ml.c5.large"
        case .mlC5Xlarge: return "ml.c5.xlarge"
        case .mlG4dn12xlarge: return "ml.g4dn.12xlarge"
        case .mlG4dn16xlarge: return "ml.g4dn.16xlarge"
        case .mlG4dn2xlarge: return "ml.g4dn.2xlarge"
        case .mlG4dn4xlarge: return "ml.g4dn.4xlarge"
        case .mlG4dn8xlarge: return "ml.g4dn.8xlarge"
        case .mlG4dnXlarge: return "ml.g4dn.xlarge"
        case .mlM512xlarge: return "ml.m5.12xlarge"
        case .mlM516xlarge: return "ml.m5.16xlarge"
        case .mlM524xlarge: return "ml.m5.24xlarge"
        case .mlM52xlarge: return "ml.m5.2xlarge"
        case .mlM54xlarge: return "ml.m5.4xlarge"
        case .mlM58xlarge: return "ml.m5.8xlarge"
        case .mlM5Large: return "ml.m5.large"
        case .mlM5Xlarge: return "ml.m5.xlarge"
        case .mlP316xlarge: return "ml.p3.16xlarge"
        case .mlP32xlarge: return "ml.p3.2xlarge"
        case .mlP38xlarge: return "ml.p3.8xlarge"
        case .mlT32xlarge: return "ml.t3.2xlarge"
        case .mlT3Large: return "ml.t3.large"
        case .mlT3Medium: return "ml.t3.medium"
        case .mlT3Micro: return "ml.t3.micro"
        case .mlT3Small: return "ml.t3.small"
        case .mlT3Xlarge: return "ml.t3.xlarge"
        case .system: return "system"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AppInstanceType(rawValue: rawValue) ?? AppInstanceType.sdkUnknown(rawValue)
    }
}
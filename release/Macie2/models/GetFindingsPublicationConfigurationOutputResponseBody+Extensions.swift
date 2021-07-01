// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetFindingsPublicationConfigurationOutputResponseBody: Equatable {
    public let securityHubConfiguration: SecurityHubConfiguration?
}

extension GetFindingsPublicationConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case securityHubConfiguration = "securityHubConfiguration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let securityHubConfigurationDecoded = try containerValues.decodeIfPresent(SecurityHubConfiguration.self, forKey: .securityHubConfiguration)
        securityHubConfiguration = securityHubConfigurationDecoded
    }
}
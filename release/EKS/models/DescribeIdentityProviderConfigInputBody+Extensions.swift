// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeIdentityProviderConfigInputBody: Equatable {
    public let identityProviderConfig: IdentityProviderConfig?
}

extension DescribeIdentityProviderConfigInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case identityProviderConfig
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityProviderConfigDecoded = try containerValues.decodeIfPresent(IdentityProviderConfig.self, forKey: .identityProviderConfig)
        identityProviderConfig = identityProviderConfigDecoded
    }
}
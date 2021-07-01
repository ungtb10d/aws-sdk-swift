// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListIdentityProviderConfigsOutputResponseBody: Equatable {
    public let identityProviderConfigs: [IdentityProviderConfig]?
    public let nextToken: String?
}

extension ListIdentityProviderConfigsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case identityProviderConfigs
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityProviderConfigsContainer = try containerValues.decodeIfPresent([IdentityProviderConfig?].self, forKey: .identityProviderConfigs)
        var identityProviderConfigsDecoded0:[IdentityProviderConfig]? = nil
        if let identityProviderConfigsContainer = identityProviderConfigsContainer {
            identityProviderConfigsDecoded0 = [IdentityProviderConfig]()
            for structure0 in identityProviderConfigsContainer {
                if let structure0 = structure0 {
                    identityProviderConfigsDecoded0?.append(structure0)
                }
            }
        }
        identityProviderConfigs = identityProviderConfigsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
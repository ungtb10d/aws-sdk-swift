// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteIdentityProviderInputBody: Equatable {
    public let userPoolId: String?
    public let providerName: String?
}

extension DeleteIdentityProviderInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case providerName = "ProviderName"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let providerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .providerName)
        providerName = providerNameDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RoleInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId
        case roleName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let roleName = roleName {
            try encodeContainer.encode(roleName, forKey: .roleName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleName)
        roleName = roleNameDecoded
        let accountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountId)
        accountId = accountIdDecoded
    }
}
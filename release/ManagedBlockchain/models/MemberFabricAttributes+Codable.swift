// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MemberFabricAttributes: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case adminUsername = "AdminUsername"
        case caEndpoint = "CaEndpoint"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let adminUsername = adminUsername {
            try encodeContainer.encode(adminUsername, forKey: .adminUsername)
        }
        if let caEndpoint = caEndpoint {
            try encodeContainer.encode(caEndpoint, forKey: .caEndpoint)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let adminUsernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .adminUsername)
        adminUsername = adminUsernameDecoded
        let caEndpointDecoded = try containerValues.decodeIfPresent(String.self, forKey: .caEndpoint)
        caEndpoint = caEndpointDecoded
    }
}
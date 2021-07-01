// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SecurityGroupMembership: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case securityGroupId = "SecurityGroupId"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let securityGroupId = securityGroupId {
            try container.encode(securityGroupId, forKey: Key("SecurityGroupId"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("Status"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let securityGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .securityGroupId)
        securityGroupId = securityGroupIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VpcSecurityGroupMembership: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case status = "Status"
        case vpcSecurityGroupId = "VpcSecurityGroupId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let status = status {
            try container.encode(status, forKey: Key("Status"))
        }
        if let vpcSecurityGroupId = vpcSecurityGroupId {
            try container.encode(vpcSecurityGroupId, forKey: Key("VpcSecurityGroupId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let vpcSecurityGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcSecurityGroupId)
        vpcSecurityGroupId = vpcSecurityGroupIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}
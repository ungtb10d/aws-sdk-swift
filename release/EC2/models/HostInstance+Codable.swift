// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HostInstance: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceId = "instanceId"
        case instanceType = "instanceType"
        case ownerId = "ownerId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let instanceId = instanceId {
            try container.encode(instanceId, forKey: Key("InstanceId"))
        }
        if let instanceType = instanceType {
            try container.encode(instanceType, forKey: Key("InstanceType"))
        }
        if let ownerId = ownerId {
            try container.encode(ownerId, forKey: Key("OwnerId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let instanceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceType)
        instanceType = instanceTypeDecoded
        let ownerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ownerId)
        ownerId = ownerIdDecoded
    }
}
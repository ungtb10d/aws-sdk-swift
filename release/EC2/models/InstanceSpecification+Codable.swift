// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InstanceSpecification: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case excludeBootVolume = "ExcludeBootVolume"
        case instanceId = "InstanceId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if excludeBootVolume != false {
            try container.encode(excludeBootVolume, forKey: Key("ExcludeBootVolume"))
        }
        if let instanceId = instanceId {
            try container.encode(instanceId, forKey: Key("InstanceId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let excludeBootVolumeDecoded = try containerValues.decode(Bool.self, forKey: .excludeBootVolume)
        excludeBootVolume = excludeBootVolumeDecoded
    }
}
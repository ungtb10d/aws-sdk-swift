// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TargetDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case id = "Id"
        case port = "Port"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let availabilityZone = availabilityZone {
            try container.encode(availabilityZone, forKey: Key("AvailabilityZone"))
        }
        if let id = id {
            try container.encode(id, forKey: Key("Id"))
        }
        if let port = port {
            try container.encode(port, forKey: Key("Port"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let portDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .port)
        port = portDecoded
        let availabilityZoneDecoded = try containerValues.decodeIfPresent(String.self, forKey: .availabilityZone)
        availabilityZone = availabilityZoneDecoded
    }
}
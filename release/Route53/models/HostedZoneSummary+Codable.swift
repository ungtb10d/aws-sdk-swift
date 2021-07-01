// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HostedZoneSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hostedZoneId = "HostedZoneId"
        case name = "Name"
        case owner = "Owner"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("https://route53.amazonaws.com/doc/2013-04-01/", forKey: Key("xmlns"))
        }
        if let hostedZoneId = hostedZoneId {
            try container.encode(hostedZoneId, forKey: Key("hostedZoneId"))
        }
        if let name = name {
            try container.encode(name, forKey: Key("name"))
        }
        if let owner = owner {
            try container.encode(owner, forKey: Key("owner"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostedZoneId)
        hostedZoneId = hostedZoneIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let ownerDecoded = try containerValues.decodeIfPresent(HostedZoneOwner.self, forKey: .owner)
        owner = ownerDecoded
    }
}
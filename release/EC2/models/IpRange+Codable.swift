// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IpRange: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cidrIp = "cidrIp"
        case description = "description"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let cidrIp = cidrIp {
            try container.encode(cidrIp, forKey: Key("CidrIp"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cidrIpDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cidrIp)
        cidrIp = cidrIpDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
    }
}
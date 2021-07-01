// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Ipv6CidrBlockAssociation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case associationId = "AssociationId"
        case cidrBlockState = "CidrBlockState"
        case ipv6CidrBlock = "Ipv6CidrBlock"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let associationId = associationId {
            try encodeContainer.encode(associationId, forKey: .associationId)
        }
        if let cidrBlockState = cidrBlockState {
            try encodeContainer.encode(cidrBlockState, forKey: .cidrBlockState)
        }
        if let ipv6CidrBlock = ipv6CidrBlock {
            try encodeContainer.encode(ipv6CidrBlock, forKey: .ipv6CidrBlock)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let associationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .associationId)
        associationId = associationIdDecoded
        let ipv6CidrBlockDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipv6CidrBlock)
        ipv6CidrBlock = ipv6CidrBlockDecoded
        let cidrBlockStateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cidrBlockState)
        cidrBlockState = cidrBlockStateDecoded
    }
}
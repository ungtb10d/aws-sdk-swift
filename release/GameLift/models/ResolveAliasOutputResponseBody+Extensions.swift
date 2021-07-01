// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResolveAliasOutputResponseBody: Equatable {
    public let fleetId: String?
    public let fleetArn: String?
}

extension ResolveAliasOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fleetArn = "FleetArn"
        case fleetId = "FleetId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetId)
        fleetId = fleetIdDecoded
        let fleetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetArn)
        fleetArn = fleetArnDecoded
    }
}
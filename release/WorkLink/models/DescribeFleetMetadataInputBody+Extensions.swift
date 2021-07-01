// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeFleetMetadataInputBody: Equatable {
    public let fleetArn: String?
}

extension DescribeFleetMetadataInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fleetArn = "FleetArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetArn)
        fleetArn = fleetArnDecoded
    }
}
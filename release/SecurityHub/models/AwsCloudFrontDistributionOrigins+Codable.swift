// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsCloudFrontDistributionOrigins: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case items = "Items"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let items = items {
            var itemsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .items)
            for awscloudfrontdistributionoriginitemlist0 in items {
                try itemsContainer.encode(awscloudfrontdistributionoriginitemlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemsContainer = try containerValues.decodeIfPresent([AwsCloudFrontDistributionOriginItem?].self, forKey: .items)
        var itemsDecoded0:[AwsCloudFrontDistributionOriginItem]? = nil
        if let itemsContainer = itemsContainer {
            itemsDecoded0 = [AwsCloudFrontDistributionOriginItem]()
            for structure0 in itemsContainer {
                if let structure0 = structure0 {
                    itemsDecoded0?.append(structure0)
                }
            }
        }
        items = itemsDecoded0
    }
}
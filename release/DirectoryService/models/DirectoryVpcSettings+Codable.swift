// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DirectoryVpcSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case subnetIds = "SubnetIds"
        case vpcId = "VpcId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let subnetIds = subnetIds {
            var subnetIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .subnetIds)
            for subnetids0 in subnetIds {
                try subnetIdsContainer.encode(subnetids0)
            }
        }
        if let vpcId = vpcId {
            try encodeContainer.encode(vpcId, forKey: .vpcId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let vpcIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcId)
        vpcId = vpcIdDecoded
        let subnetIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .subnetIds)
        var subnetIdsDecoded0:[String]? = nil
        if let subnetIdsContainer = subnetIdsContainer {
            subnetIdsDecoded0 = [String]()
            for string0 in subnetIdsContainer {
                if let string0 = string0 {
                    subnetIdsDecoded0?.append(string0)
                }
            }
        }
        subnetIds = subnetIdsDecoded0
    }
}
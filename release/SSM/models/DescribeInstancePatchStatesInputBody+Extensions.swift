// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeInstancePatchStatesInputBody: Equatable {
    public let instanceIds: [String]?
    public let nextToken: String?
    public let maxResults: Int
}

extension DescribeInstancePatchStatesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case instanceIds = "InstanceIds"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .instanceIds)
        var instanceIdsDecoded0:[String]? = nil
        if let instanceIdsContainer = instanceIdsContainer {
            instanceIdsDecoded0 = [String]()
            for string0 in instanceIdsContainer {
                if let string0 = string0 {
                    instanceIdsDecoded0?.append(string0)
                }
            }
        }
        instanceIds = instanceIdsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeRemediationExecutionStatusInputBody: Equatable {
    public let configRuleName: String?
    public let resourceKeys: [ResourceKey]?
    public let limit: Int
    public let nextToken: String?
}

extension DescribeRemediationExecutionStatusInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configRuleName = "ConfigRuleName"
        case limit = "Limit"
        case nextToken = "NextToken"
        case resourceKeys = "ResourceKeys"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configRuleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configRuleName)
        configRuleName = configRuleNameDecoded
        let resourceKeysContainer = try containerValues.decodeIfPresent([ResourceKey?].self, forKey: .resourceKeys)
        var resourceKeysDecoded0:[ResourceKey]? = nil
        if let resourceKeysContainer = resourceKeysContainer {
            resourceKeysDecoded0 = [ResourceKey]()
            for structure0 in resourceKeysContainer {
                if let structure0 = structure0 {
                    resourceKeysDecoded0?.append(structure0)
                }
            }
        }
        resourceKeys = resourceKeysDecoded0
        let limitDecoded = try containerValues.decode(Int.self, forKey: .limit)
        limit = limitDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
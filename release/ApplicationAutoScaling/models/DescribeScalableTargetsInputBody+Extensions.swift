// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeScalableTargetsInputBody: Equatable {
    public let serviceNamespace: ServiceNamespace?
    public let resourceIds: [String]?
    public let scalableDimension: ScalableDimension?
    public let maxResults: Int?
    public let nextToken: String?
}

extension DescribeScalableTargetsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case resourceIds = "ResourceIds"
        case scalableDimension = "ScalableDimension"
        case serviceNamespace = "ServiceNamespace"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceNamespaceDecoded = try containerValues.decodeIfPresent(ServiceNamespace.self, forKey: .serviceNamespace)
        serviceNamespace = serviceNamespaceDecoded
        let resourceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .resourceIds)
        var resourceIdsDecoded0:[String]? = nil
        if let resourceIdsContainer = resourceIdsContainer {
            resourceIdsDecoded0 = [String]()
            for string0 in resourceIdsContainer {
                if let string0 = string0 {
                    resourceIdsDecoded0?.append(string0)
                }
            }
        }
        resourceIds = resourceIdsDecoded0
        let scalableDimensionDecoded = try containerValues.decodeIfPresent(ScalableDimension.self, forKey: .scalableDimension)
        scalableDimension = scalableDimensionDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListResolverQueryLogConfigAssociationsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let totalCount: Int
    public let totalFilteredCount: Int
    public let resolverQueryLogConfigAssociations: [ResolverQueryLogConfigAssociation]?
}

extension ListResolverQueryLogConfigAssociationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case resolverQueryLogConfigAssociations = "ResolverQueryLogConfigAssociations"
        case totalCount = "TotalCount"
        case totalFilteredCount = "TotalFilteredCount"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let totalCountDecoded = try containerValues.decode(Int.self, forKey: .totalCount)
        totalCount = totalCountDecoded
        let totalFilteredCountDecoded = try containerValues.decode(Int.self, forKey: .totalFilteredCount)
        totalFilteredCount = totalFilteredCountDecoded
        let resolverQueryLogConfigAssociationsContainer = try containerValues.decodeIfPresent([ResolverQueryLogConfigAssociation?].self, forKey: .resolverQueryLogConfigAssociations)
        var resolverQueryLogConfigAssociationsDecoded0:[ResolverQueryLogConfigAssociation]? = nil
        if let resolverQueryLogConfigAssociationsContainer = resolverQueryLogConfigAssociationsContainer {
            resolverQueryLogConfigAssociationsDecoded0 = [ResolverQueryLogConfigAssociation]()
            for structure0 in resolverQueryLogConfigAssociationsContainer {
                if let structure0 = structure0 {
                    resolverQueryLogConfigAssociationsDecoded0?.append(structure0)
                }
            }
        }
        resolverQueryLogConfigAssociations = resolverQueryLogConfigAssociationsDecoded0
    }
}
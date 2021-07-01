// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListGroupResourcesOutputResponseBody: Equatable {
    public let resources: [ListGroupResourcesItem]?
    public let resourceIdentifiers: [ResourceIdentifier]?
    public let nextToken: String?
    public let queryErrors: [QueryError]?
}

extension ListGroupResourcesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case queryErrors = "QueryErrors"
        case resourceIdentifiers = "ResourceIdentifiers"
        case resources = "Resources"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourcesContainer = try containerValues.decodeIfPresent([ListGroupResourcesItem?].self, forKey: .resources)
        var resourcesDecoded0:[ListGroupResourcesItem]? = nil
        if let resourcesContainer = resourcesContainer {
            resourcesDecoded0 = [ListGroupResourcesItem]()
            for structure0 in resourcesContainer {
                if let structure0 = structure0 {
                    resourcesDecoded0?.append(structure0)
                }
            }
        }
        resources = resourcesDecoded0
        let resourceIdentifiersContainer = try containerValues.decodeIfPresent([ResourceIdentifier?].self, forKey: .resourceIdentifiers)
        var resourceIdentifiersDecoded0:[ResourceIdentifier]? = nil
        if let resourceIdentifiersContainer = resourceIdentifiersContainer {
            resourceIdentifiersDecoded0 = [ResourceIdentifier]()
            for structure0 in resourceIdentifiersContainer {
                if let structure0 = structure0 {
                    resourceIdentifiersDecoded0?.append(structure0)
                }
            }
        }
        resourceIdentifiers = resourceIdentifiersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let queryErrorsContainer = try containerValues.decodeIfPresent([QueryError?].self, forKey: .queryErrors)
        var queryErrorsDecoded0:[QueryError]? = nil
        if let queryErrorsContainer = queryErrorsContainer {
            queryErrorsDecoded0 = [QueryError]()
            for structure0 in queryErrorsContainer {
                if let structure0 = structure0 {
                    queryErrorsDecoded0?.append(structure0)
                }
            }
        }
        queryErrors = queryErrorsDecoded0
    }
}
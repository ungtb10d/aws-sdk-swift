// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetNamedQueryOutputResponseBody: Equatable {
    public let namedQueries: [NamedQuery]?
    public let unprocessedNamedQueryIds: [UnprocessedNamedQueryId]?
}

extension BatchGetNamedQueryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case namedQueries = "NamedQueries"
        case unprocessedNamedQueryIds = "UnprocessedNamedQueryIds"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let namedQueriesContainer = try containerValues.decodeIfPresent([NamedQuery?].self, forKey: .namedQueries)
        var namedQueriesDecoded0:[NamedQuery]? = nil
        if let namedQueriesContainer = namedQueriesContainer {
            namedQueriesDecoded0 = [NamedQuery]()
            for structure0 in namedQueriesContainer {
                if let structure0 = structure0 {
                    namedQueriesDecoded0?.append(structure0)
                }
            }
        }
        namedQueries = namedQueriesDecoded0
        let unprocessedNamedQueryIdsContainer = try containerValues.decodeIfPresent([UnprocessedNamedQueryId?].self, forKey: .unprocessedNamedQueryIds)
        var unprocessedNamedQueryIdsDecoded0:[UnprocessedNamedQueryId]? = nil
        if let unprocessedNamedQueryIdsContainer = unprocessedNamedQueryIdsContainer {
            unprocessedNamedQueryIdsDecoded0 = [UnprocessedNamedQueryId]()
            for structure0 in unprocessedNamedQueryIdsContainer {
                if let structure0 = structure0 {
                    unprocessedNamedQueryIdsDecoded0?.append(structure0)
                }
            }
        }
        unprocessedNamedQueryIds = unprocessedNamedQueryIdsDecoded0
    }
}
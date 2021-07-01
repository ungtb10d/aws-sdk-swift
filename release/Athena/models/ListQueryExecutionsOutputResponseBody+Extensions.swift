// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListQueryExecutionsOutputResponseBody: Equatable {
    public let queryExecutionIds: [String]?
    public let nextToken: String?
}

extension ListQueryExecutionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case queryExecutionIds = "QueryExecutionIds"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queryExecutionIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .queryExecutionIds)
        var queryExecutionIdsDecoded0:[String]? = nil
        if let queryExecutionIdsContainer = queryExecutionIdsContainer {
            queryExecutionIdsDecoded0 = [String]()
            for string0 in queryExecutionIdsContainer {
                if let string0 = string0 {
                    queryExecutionIdsDecoded0?.append(string0)
                }
            }
        }
        queryExecutionIds = queryExecutionIdsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
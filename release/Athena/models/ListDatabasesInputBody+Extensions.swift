// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDatabasesInputBody: Equatable {
    public let catalogName: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension ListDatabasesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case catalogName = "CatalogName"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let catalogNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalogName)
        catalogName = catalogNameDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeServersInputBody: Equatable {
    public let serverName: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension DescribeServersInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serverName = "ServerName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serverNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverName)
        serverName = serverNameDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}
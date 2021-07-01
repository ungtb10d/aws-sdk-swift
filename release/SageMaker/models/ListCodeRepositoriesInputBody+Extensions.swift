// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListCodeRepositoriesInputBody: Equatable {
    public let creationTimeAfter: Date?
    public let creationTimeBefore: Date?
    public let lastModifiedTimeAfter: Date?
    public let lastModifiedTimeBefore: Date?
    public let maxResults: Int?
    public let nameContains: String?
    public let nextToken: String?
    public let sortBy: CodeRepositorySortBy?
    public let sortOrder: CodeRepositorySortOrder?
}

extension ListCodeRepositoriesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case creationTimeAfter = "CreationTimeAfter"
        case creationTimeBefore = "CreationTimeBefore"
        case lastModifiedTimeAfter = "LastModifiedTimeAfter"
        case lastModifiedTimeBefore = "LastModifiedTimeBefore"
        case maxResults = "MaxResults"
        case nameContains = "NameContains"
        case nextToken = "NextToken"
        case sortBy = "SortBy"
        case sortOrder = "SortOrder"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let creationTimeAfterDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTimeAfter)
        creationTimeAfter = creationTimeAfterDecoded
        let creationTimeBeforeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTimeBefore)
        creationTimeBefore = creationTimeBeforeDecoded
        let lastModifiedTimeAfterDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTimeAfter)
        lastModifiedTimeAfter = lastModifiedTimeAfterDecoded
        let lastModifiedTimeBeforeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTimeBefore)
        lastModifiedTimeBefore = lastModifiedTimeBeforeDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nameContainsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nameContains)
        nameContains = nameContainsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let sortByDecoded = try containerValues.decodeIfPresent(CodeRepositorySortBy.self, forKey: .sortBy)
        sortBy = sortByDecoded
        let sortOrderDecoded = try containerValues.decodeIfPresent(CodeRepositorySortOrder.self, forKey: .sortOrder)
        sortOrder = sortOrderDecoded
    }
}
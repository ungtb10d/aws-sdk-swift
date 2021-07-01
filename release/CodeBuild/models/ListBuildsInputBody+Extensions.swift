// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBuildsInputBody: Equatable {
    public let sortOrder: SortOrderType?
    public let nextToken: String?
}

extension ListBuildsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case sortOrder
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sortOrderDecoded = try containerValues.decodeIfPresent(SortOrderType.self, forKey: .sortOrder)
        sortOrder = sortOrderDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
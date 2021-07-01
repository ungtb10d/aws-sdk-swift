// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListProfileObjectsOutputResponseBody: Equatable {
    public let items: [ListProfileObjectsItem]?
    public let nextToken: String?
}

extension ListProfileObjectsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemsContainer = try containerValues.decodeIfPresent([ListProfileObjectsItem?].self, forKey: .items)
        var itemsDecoded0:[ListProfileObjectsItem]? = nil
        if let itemsContainer = itemsContainer {
            itemsDecoded0 = [ListProfileObjectsItem]()
            for structure0 in itemsContainer {
                if let structure0 = structure0 {
                    itemsDecoded0?.append(structure0)
                }
            }
        }
        items = itemsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeJobLogItemsOutputResponseBody: Equatable {
    public let items: [JobLog]?
    public let nextToken: String?
}

extension DescribeJobLogItemsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case items
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemsContainer = try containerValues.decodeIfPresent([JobLog?].self, forKey: .items)
        var itemsDecoded0:[JobLog]? = nil
        if let itemsContainer = itemsContainer {
            itemsDecoded0 = [JobLog]()
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
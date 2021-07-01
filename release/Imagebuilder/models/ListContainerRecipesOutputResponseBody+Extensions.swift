// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListContainerRecipesOutputResponseBody: Equatable {
    public let requestId: String?
    public let containerRecipeSummaryList: [ContainerRecipeSummary]?
    public let nextToken: String?
}

extension ListContainerRecipesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case containerRecipeSummaryList
        case nextToken
        case requestId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
        let containerRecipeSummaryListContainer = try containerValues.decodeIfPresent([ContainerRecipeSummary?].self, forKey: .containerRecipeSummaryList)
        var containerRecipeSummaryListDecoded0:[ContainerRecipeSummary]? = nil
        if let containerRecipeSummaryListContainer = containerRecipeSummaryListContainer {
            containerRecipeSummaryListDecoded0 = [ContainerRecipeSummary]()
            for structure0 in containerRecipeSummaryListContainer {
                if let structure0 = structure0 {
                    containerRecipeSummaryListDecoded0?.append(structure0)
                }
            }
        }
        containerRecipeSummaryList = containerRecipeSummaryListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBotsOutputResponseBody: Equatable {
    public let botSummaries: [BotSummary]?
    public let nextToken: String?
}

extension ListBotsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case botSummaries
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let botSummariesContainer = try containerValues.decodeIfPresent([BotSummary?].self, forKey: .botSummaries)
        var botSummariesDecoded0:[BotSummary]? = nil
        if let botSummariesContainer = botSummariesContainer {
            botSummariesDecoded0 = [BotSummary]()
            for structure0 in botSummariesContainer {
                if let structure0 = structure0 {
                    botSummariesDecoded0?.append(structure0)
                }
            }
        }
        botSummaries = botSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
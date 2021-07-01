// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAttacksOutputResponseBody: Equatable {
    public let attackSummaries: [AttackSummary]?
    public let nextToken: String?
}

extension ListAttacksOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attackSummaries = "AttackSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attackSummariesContainer = try containerValues.decodeIfPresent([AttackSummary?].self, forKey: .attackSummaries)
        var attackSummariesDecoded0:[AttackSummary]? = nil
        if let attackSummariesContainer = attackSummariesContainer {
            attackSummariesDecoded0 = [AttackSummary]()
            for structure0 in attackSummariesContainer {
                if let structure0 = structure0 {
                    attackSummariesDecoded0?.append(structure0)
                }
            }
        }
        attackSummaries = attackSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
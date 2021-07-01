// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListTrialsOutputResponseBody: Equatable {
    public let trialSummaries: [TrialSummary]?
    public let nextToken: String?
}

extension ListTrialsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case trialSummaries = "TrialSummaries"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trialSummariesContainer = try containerValues.decodeIfPresent([TrialSummary?].self, forKey: .trialSummaries)
        var trialSummariesDecoded0:[TrialSummary]? = nil
        if let trialSummariesContainer = trialSummariesContainer {
            trialSummariesDecoded0 = [TrialSummary]()
            for structure0 in trialSummariesContainer {
                if let structure0 = structure0 {
                    trialSummariesDecoded0?.append(structure0)
                }
            }
        }
        trialSummaries = trialSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
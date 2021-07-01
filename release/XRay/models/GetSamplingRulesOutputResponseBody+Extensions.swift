// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetSamplingRulesOutputResponseBody: Equatable {
    public let samplingRuleRecords: [SamplingRuleRecord]?
    public let nextToken: String?
}

extension GetSamplingRulesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case samplingRuleRecords = "SamplingRuleRecords"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let samplingRuleRecordsContainer = try containerValues.decodeIfPresent([SamplingRuleRecord?].self, forKey: .samplingRuleRecords)
        var samplingRuleRecordsDecoded0:[SamplingRuleRecord]? = nil
        if let samplingRuleRecordsContainer = samplingRuleRecordsContainer {
            samplingRuleRecordsDecoded0 = [SamplingRuleRecord]()
            for structure0 in samplingRuleRecordsContainer {
                if let structure0 = structure0 {
                    samplingRuleRecordsDecoded0?.append(structure0)
                }
            }
        }
        samplingRuleRecords = samplingRuleRecordsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
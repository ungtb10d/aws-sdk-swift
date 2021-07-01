// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRateBasedRuleInputBody: Equatable {
    public let ruleId: String?
}

extension GetRateBasedRuleInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ruleId = "RuleId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ruleIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ruleId)
        ruleId = ruleIdDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSubscribedRuleGroupsOutputResponseBody: Equatable {
    public let nextMarker: String?
    public let ruleGroups: [SubscribedRuleGroupSummary]?
}

extension ListSubscribedRuleGroupsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextMarker = "NextMarker"
        case ruleGroups = "RuleGroups"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
        let ruleGroupsContainer = try containerValues.decodeIfPresent([SubscribedRuleGroupSummary?].self, forKey: .ruleGroups)
        var ruleGroupsDecoded0:[SubscribedRuleGroupSummary]? = nil
        if let ruleGroupsContainer = ruleGroupsContainer {
            ruleGroupsDecoded0 = [SubscribedRuleGroupSummary]()
            for structure0 in ruleGroupsContainer {
                if let structure0 = structure0 {
                    ruleGroupsDecoded0?.append(structure0)
                }
            }
        }
        ruleGroups = ruleGroupsDecoded0
    }
}
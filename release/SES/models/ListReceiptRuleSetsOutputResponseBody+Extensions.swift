// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListReceiptRuleSetsOutputResponseBody: Equatable {
    public let ruleSets: [ReceiptRuleSetMetadata]?
    public let nextToken: String?
}

extension ListReceiptRuleSetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case ruleSets = "RuleSets"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ListReceiptRuleSetsResult"))
        if containerValues.contains(.ruleSets) {
            struct KeyVal0{struct member{}}
            let ruleSetsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .ruleSets)
            if let ruleSetsWrappedContainer = ruleSetsWrappedContainer {
                let ruleSetsContainer = try ruleSetsWrappedContainer.decodeIfPresent([ReceiptRuleSetMetadata].self, forKey: .member)
                var ruleSetsBuffer:[ReceiptRuleSetMetadata]? = nil
                if let ruleSetsContainer = ruleSetsContainer {
                    ruleSetsBuffer = [ReceiptRuleSetMetadata]()
                    for structureContainer0 in ruleSetsContainer {
                        ruleSetsBuffer?.append(structureContainer0)
                    }
                }
                ruleSets = ruleSetsBuffer
            } else {
                ruleSets = []
            }
        } else {
            ruleSets = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
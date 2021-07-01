// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateAutomaticTapeCreationPolicyInputBody: Equatable {
    public let automaticTapeCreationRules: [AutomaticTapeCreationRule]?
    public let gatewayARN: String?
}

extension UpdateAutomaticTapeCreationPolicyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case automaticTapeCreationRules = "AutomaticTapeCreationRules"
        case gatewayARN = "GatewayARN"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let automaticTapeCreationRulesContainer = try containerValues.decodeIfPresent([AutomaticTapeCreationRule?].self, forKey: .automaticTapeCreationRules)
        var automaticTapeCreationRulesDecoded0:[AutomaticTapeCreationRule]? = nil
        if let automaticTapeCreationRulesContainer = automaticTapeCreationRulesContainer {
            automaticTapeCreationRulesDecoded0 = [AutomaticTapeCreationRule]()
            for structure0 in automaticTapeCreationRulesContainer {
                if let structure0 = structure0 {
                    automaticTapeCreationRulesDecoded0?.append(structure0)
                }
            }
        }
        automaticTapeCreationRules = automaticTapeCreationRulesDecoded0
        let gatewayARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayARN)
        gatewayARN = gatewayARNDecoded
    }
}
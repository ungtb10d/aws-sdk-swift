// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AutomaticInputFailoverSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case errorClearTimeMsec = "errorClearTimeMsec"
        case failoverConditions = "failoverConditions"
        case inputPreference = "inputPreference"
        case secondaryInputId = "secondaryInputId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if errorClearTimeMsec != 0 {
            try encodeContainer.encode(errorClearTimeMsec, forKey: .errorClearTimeMsec)
        }
        if let failoverConditions = failoverConditions {
            var failoverConditionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .failoverConditions)
            for __listoffailovercondition0 in failoverConditions {
                try failoverConditionsContainer.encode(__listoffailovercondition0)
            }
        }
        if let inputPreference = inputPreference {
            try encodeContainer.encode(inputPreference.rawValue, forKey: .inputPreference)
        }
        if let secondaryInputId = secondaryInputId {
            try encodeContainer.encode(secondaryInputId, forKey: .secondaryInputId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorClearTimeMsecDecoded = try containerValues.decode(Int.self, forKey: .errorClearTimeMsec)
        errorClearTimeMsec = errorClearTimeMsecDecoded
        let failoverConditionsContainer = try containerValues.decodeIfPresent([FailoverCondition?].self, forKey: .failoverConditions)
        var failoverConditionsDecoded0:[FailoverCondition]? = nil
        if let failoverConditionsContainer = failoverConditionsContainer {
            failoverConditionsDecoded0 = [FailoverCondition]()
            for structure0 in failoverConditionsContainer {
                if let structure0 = structure0 {
                    failoverConditionsDecoded0?.append(structure0)
                }
            }
        }
        failoverConditions = failoverConditionsDecoded0
        let inputPreferenceDecoded = try containerValues.decodeIfPresent(InputPreference.self, forKey: .inputPreference)
        inputPreference = inputPreferenceDecoded
        let secondaryInputIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secondaryInputId)
        secondaryInputId = secondaryInputIdDecoded
    }
}
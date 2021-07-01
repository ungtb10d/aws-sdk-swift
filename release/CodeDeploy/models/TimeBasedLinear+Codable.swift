// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TimeBasedLinear: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case linearInterval
        case linearPercentage
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if linearInterval != 0 {
            try encodeContainer.encode(linearInterval, forKey: .linearInterval)
        }
        if linearPercentage != 0 {
            try encodeContainer.encode(linearPercentage, forKey: .linearPercentage)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let linearPercentageDecoded = try containerValues.decode(Int.self, forKey: .linearPercentage)
        linearPercentage = linearPercentageDecoded
        let linearIntervalDecoded = try containerValues.decode(Int.self, forKey: .linearInterval)
        linearInterval = linearIntervalDecoded
    }
}
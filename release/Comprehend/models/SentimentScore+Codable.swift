// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SentimentScore: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case mixed = "Mixed"
        case negative = "Negative"
        case neutral = "Neutral"
        case positive = "Positive"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let mixed = mixed {
            try encodeContainer.encode(mixed, forKey: .mixed)
        }
        if let negative = negative {
            try encodeContainer.encode(negative, forKey: .negative)
        }
        if let neutral = neutral {
            try encodeContainer.encode(neutral, forKey: .neutral)
        }
        if let positive = positive {
            try encodeContainer.encode(positive, forKey: .positive)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let positiveDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .positive)
        positive = positiveDecoded
        let negativeDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .negative)
        negative = negativeDecoded
        let neutralDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .neutral)
        neutral = neutralDecoded
        let mixedDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .mixed)
        mixed = mixedDecoded
    }
}
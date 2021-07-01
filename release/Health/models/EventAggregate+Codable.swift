// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EventAggregate: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aggregateValue
        case count
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aggregateValue = aggregateValue {
            try encodeContainer.encode(aggregateValue, forKey: .aggregateValue)
        }
        if count != 0 {
            try encodeContainer.encode(count, forKey: .count)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aggregateValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aggregateValue)
        aggregateValue = aggregateValueDecoded
        let countDecoded = try containerValues.decode(Int.self, forKey: .count)
        count = countDecoded
    }
}
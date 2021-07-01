// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HistogramEntry: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case count = "Count"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if count != 0 {
            try encodeContainer.encode(count, forKey: .count)
        }
        if value != 0.0 {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let valueDecoded = try containerValues.decode(Double.self, forKey: .value)
        value = valueDecoded
        let countDecoded = try containerValues.decode(Int.self, forKey: .count)
        count = countDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SimpleRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case comparisonOperator
        case inputProperty
        case threshold
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let comparisonOperator = comparisonOperator {
            try encodeContainer.encode(comparisonOperator.rawValue, forKey: .comparisonOperator)
        }
        if let inputProperty = inputProperty {
            try encodeContainer.encode(inputProperty, forKey: .inputProperty)
        }
        if let threshold = threshold {
            try encodeContainer.encode(threshold, forKey: .threshold)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let inputPropertyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .inputProperty)
        inputProperty = inputPropertyDecoded
        let comparisonOperatorDecoded = try containerValues.decodeIfPresent(ComparisonOperator.self, forKey: .comparisonOperator)
        comparisonOperator = comparisonOperatorDecoded
        let thresholdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .threshold)
        threshold = thresholdDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Attribute: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributeType = "AttributeType"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributeType = attributeType {
            try encodeContainer.encode(attributeType.rawValue, forKey: .attributeType)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attributeTypeDecoded = try containerValues.decodeIfPresent(InstanceAttributeType.self, forKey: .attributeType)
        attributeType = attributeTypeDecoded
        let valueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .value)
        value = valueDecoded
    }
}
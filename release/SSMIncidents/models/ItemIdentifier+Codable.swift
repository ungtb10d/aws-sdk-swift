// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ItemIdentifier: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case type
        case value
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let valueDecoded = try containerValues.decodeIfPresent(ItemValue.self, forKey: .value)
        value = valueDecoded
        let typeDecoded = try containerValues.decodeIfPresent(ItemType.self, forKey: .type)
        type = typeDecoded
    }
}
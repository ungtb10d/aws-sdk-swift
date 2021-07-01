// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AvailableProcessorFeature: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowedValues = "AllowedValues"
        case defaultValue = "DefaultValue"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let allowedValues = allowedValues {
            try container.encode(allowedValues, forKey: Key("AllowedValues"))
        }
        if let defaultValue = defaultValue {
            try container.encode(defaultValue, forKey: Key("DefaultValue"))
        }
        if let name = name {
            try container.encode(name, forKey: Key("Name"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let defaultValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultValue)
        defaultValue = defaultValueDecoded
        let allowedValuesDecoded = try containerValues.decodeIfPresent(String.self, forKey: .allowedValues)
        allowedValues = allowedValuesDecoded
    }
}
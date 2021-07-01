// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StringAttributeConstraintsType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxLength = "MaxLength"
        case minLength = "MinLength"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxLength = maxLength {
            try encodeContainer.encode(maxLength, forKey: .maxLength)
        }
        if let minLength = minLength {
            try encodeContainer.encode(minLength, forKey: .minLength)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let minLengthDecoded = try containerValues.decodeIfPresent(String.self, forKey: .minLength)
        minLength = minLengthDecoded
        let maxLengthDecoded = try containerValues.decodeIfPresent(String.self, forKey: .maxLength)
        maxLength = maxLengthDecoded
    }
}
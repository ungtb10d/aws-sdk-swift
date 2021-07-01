// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateBackendAuthPasswordPolicyConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case additionalConstraints = "additionalConstraints"
        case minimumLength = "minimumLength"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let additionalConstraints = additionalConstraints {
            var additionalConstraintsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .additionalConstraints)
            for listofadditionalconstraintselement0 in additionalConstraints {
                try additionalConstraintsContainer.encode(listofadditionalconstraintselement0.rawValue)
            }
        }
        if minimumLength != 0.0 {
            try encodeContainer.encode(minimumLength, forKey: .minimumLength)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let additionalConstraintsContainer = try containerValues.decodeIfPresent([AdditionalConstraintsElement?].self, forKey: .additionalConstraints)
        var additionalConstraintsDecoded0:[AdditionalConstraintsElement]? = nil
        if let additionalConstraintsContainer = additionalConstraintsContainer {
            additionalConstraintsDecoded0 = [AdditionalConstraintsElement]()
            for string0 in additionalConstraintsContainer {
                if let string0 = string0 {
                    additionalConstraintsDecoded0?.append(string0)
                }
            }
        }
        additionalConstraints = additionalConstraintsDecoded0
        let minimumLengthDecoded = try containerValues.decode(Double.self, forKey: .minimumLength)
        minimumLength = minimumLengthDecoded
    }
}
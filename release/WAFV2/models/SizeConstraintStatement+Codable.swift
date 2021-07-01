// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SizeConstraintStatement: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case comparisonOperator = "ComparisonOperator"
        case fieldToMatch = "FieldToMatch"
        case size = "Size"
        case textTransformations = "TextTransformations"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let comparisonOperator = comparisonOperator {
            try encodeContainer.encode(comparisonOperator.rawValue, forKey: .comparisonOperator)
        }
        if let fieldToMatch = fieldToMatch {
            try encodeContainer.encode(fieldToMatch, forKey: .fieldToMatch)
        }
        if size != 0 {
            try encodeContainer.encode(size, forKey: .size)
        }
        if let textTransformations = textTransformations {
            var textTransformationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .textTransformations)
            for texttransformations0 in textTransformations {
                try textTransformationsContainer.encode(texttransformations0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fieldToMatchDecoded = try containerValues.decodeIfPresent(FieldToMatch.self, forKey: .fieldToMatch)
        fieldToMatch = fieldToMatchDecoded
        let comparisonOperatorDecoded = try containerValues.decodeIfPresent(ComparisonOperator.self, forKey: .comparisonOperator)
        comparisonOperator = comparisonOperatorDecoded
        let sizeDecoded = try containerValues.decode(Int.self, forKey: .size)
        size = sizeDecoded
        let textTransformationsContainer = try containerValues.decodeIfPresent([TextTransformation?].self, forKey: .textTransformations)
        var textTransformationsDecoded0:[TextTransformation]? = nil
        if let textTransformationsContainer = textTransformationsContainer {
            textTransformationsDecoded0 = [TextTransformation]()
            for structure0 in textTransformationsContainer {
                if let structure0 = structure0 {
                    textTransformationsDecoded0?.append(structure0)
                }
            }
        }
        textTransformations = textTransformationsDecoded0
    }
}
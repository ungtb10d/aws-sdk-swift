// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Selector: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case fieldName
        case `operator` = "operator"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let fieldName = fieldName {
            try encodeContainer.encode(fieldName, forKey: .fieldName)
        }
        if let `operator` = `operator` {
            try encodeContainer.encode(`operator`, forKey: .`operator`)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fieldNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fieldName)
        fieldName = fieldNameDecoded
        let operatorDecoded = try containerValues.decodeIfPresent(Operator.self, forKey: .operator)
        `operator` = operatorDecoded
    }
}
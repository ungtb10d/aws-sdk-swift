// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Computer: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case computerAttributes = "ComputerAttributes"
        case computerId = "ComputerId"
        case computerName = "ComputerName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let computerAttributes = computerAttributes {
            var computerAttributesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .computerAttributes)
            for attributes0 in computerAttributes {
                try computerAttributesContainer.encode(attributes0)
            }
        }
        if let computerId = computerId {
            try encodeContainer.encode(computerId, forKey: .computerId)
        }
        if let computerName = computerName {
            try encodeContainer.encode(computerName, forKey: .computerName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let computerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .computerId)
        computerId = computerIdDecoded
        let computerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .computerName)
        computerName = computerNameDecoded
        let computerAttributesContainer = try containerValues.decodeIfPresent([Attribute?].self, forKey: .computerAttributes)
        var computerAttributesDecoded0:[Attribute]? = nil
        if let computerAttributesContainer = computerAttributesContainer {
            computerAttributesDecoded0 = [Attribute]()
            for structure0 in computerAttributesContainer {
                if let structure0 = structure0 {
                    computerAttributesDecoded0?.append(structure0)
                }
            }
        }
        computerAttributes = computerAttributesDecoded0
    }
}
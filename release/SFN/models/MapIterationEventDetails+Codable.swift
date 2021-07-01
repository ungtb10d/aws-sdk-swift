// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MapIterationEventDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case index
        case name
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if index != 0 {
            try encodeContainer.encode(index, forKey: .index)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let indexDecoded = try containerValues.decode(Int.self, forKey: .index)
        index = indexDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CharacterOffsets: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case beginOffsetChar = "BeginOffsetChar"
        case endOffsetChar = "EndOffsetChar"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if beginOffsetChar != 0 {
            try encodeContainer.encode(beginOffsetChar, forKey: .beginOffsetChar)
        }
        if endOffsetChar != 0 {
            try encodeContainer.encode(endOffsetChar, forKey: .endOffsetChar)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let beginOffsetCharDecoded = try containerValues.decode(Int.self, forKey: .beginOffsetChar)
        beginOffsetChar = beginOffsetCharDecoded
        let endOffsetCharDecoded = try containerValues.decode(Int.self, forKey: .endOffsetChar)
        endOffsetChar = endOffsetCharDecoded
    }
}
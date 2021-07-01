// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchDetectKeyPhrasesItemResult: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case index = "Index"
        case keyPhrases = "KeyPhrases"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let index = index {
            try encodeContainer.encode(index, forKey: .index)
        }
        if let keyPhrases = keyPhrases {
            var keyPhrasesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .keyPhrases)
            for listofkeyphrases0 in keyPhrases {
                try keyPhrasesContainer.encode(listofkeyphrases0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .index)
        index = indexDecoded
        let keyPhrasesContainer = try containerValues.decodeIfPresent([KeyPhrase?].self, forKey: .keyPhrases)
        var keyPhrasesDecoded0:[KeyPhrase]? = nil
        if let keyPhrasesContainer = keyPhrasesContainer {
            keyPhrasesDecoded0 = [KeyPhrase]()
            for structure0 in keyPhrasesContainer {
                if let structure0 = structure0 {
                    keyPhrasesDecoded0?.append(structure0)
                }
            }
        }
        keyPhrases = keyPhrasesDecoded0
    }
}
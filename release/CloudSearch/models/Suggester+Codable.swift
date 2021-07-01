// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Suggester: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case documentSuggesterOptions = "DocumentSuggesterOptions"
        case suggesterName = "SuggesterName"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let documentSuggesterOptions = documentSuggesterOptions {
            try container.encode(documentSuggesterOptions, forKey: Key("DocumentSuggesterOptions"))
        }
        if let suggesterName = suggesterName {
            try container.encode(suggesterName, forKey: Key("SuggesterName"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let suggesterNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .suggesterName)
        suggesterName = suggesterNameDecoded
        let documentSuggesterOptionsDecoded = try containerValues.decodeIfPresent(DocumentSuggesterOptions.self, forKey: .documentSuggesterOptions)
        documentSuggesterOptions = documentSuggesterOptionsDecoded
    }
}
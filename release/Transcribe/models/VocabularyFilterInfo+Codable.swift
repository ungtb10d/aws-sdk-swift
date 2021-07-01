// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VocabularyFilterInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case languageCode = "LanguageCode"
        case lastModifiedTime = "LastModifiedTime"
        case vocabularyFilterName = "VocabularyFilterName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let languageCode = languageCode {
            try encodeContainer.encode(languageCode.rawValue, forKey: .languageCode)
        }
        if let lastModifiedTime = lastModifiedTime {
            try encodeContainer.encode(lastModifiedTime.timeIntervalSince1970, forKey: .lastModifiedTime)
        }
        if let vocabularyFilterName = vocabularyFilterName {
            try encodeContainer.encode(vocabularyFilterName, forKey: .vocabularyFilterName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let vocabularyFilterNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vocabularyFilterName)
        vocabularyFilterName = vocabularyFilterNameDecoded
        let languageCodeDecoded = try containerValues.decodeIfPresent(LanguageCode.self, forKey: .languageCode)
        languageCode = languageCodeDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTime)
        lastModifiedTime = lastModifiedTimeDecoded
    }
}
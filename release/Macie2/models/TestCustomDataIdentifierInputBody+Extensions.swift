// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct TestCustomDataIdentifierInputBody: Equatable {
    public let ignoreWords: [String]?
    public let keywords: [String]?
    public let maximumMatchDistance: Int
    public let regex: String?
    public let sampleText: String?
}

extension TestCustomDataIdentifierInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ignoreWords = "ignoreWords"
        case keywords = "keywords"
        case maximumMatchDistance = "maximumMatchDistance"
        case regex = "regex"
        case sampleText = "sampleText"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ignoreWordsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ignoreWords)
        var ignoreWordsDecoded0:[String]? = nil
        if let ignoreWordsContainer = ignoreWordsContainer {
            ignoreWordsDecoded0 = [String]()
            for string0 in ignoreWordsContainer {
                if let string0 = string0 {
                    ignoreWordsDecoded0?.append(string0)
                }
            }
        }
        ignoreWords = ignoreWordsDecoded0
        let keywordsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .keywords)
        var keywordsDecoded0:[String]? = nil
        if let keywordsContainer = keywordsContainer {
            keywordsDecoded0 = [String]()
            for string0 in keywordsContainer {
                if let string0 = string0 {
                    keywordsDecoded0?.append(string0)
                }
            }
        }
        keywords = keywordsDecoded0
        let maximumMatchDistanceDecoded = try containerValues.decode(Int.self, forKey: .maximumMatchDistance)
        maximumMatchDistance = maximumMatchDistanceDecoded
        let regexDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regex)
        regex = regexDecoded
        let sampleTextDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sampleText)
        sampleText = sampleTextDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListMedicalVocabulariesOutputResponseBody: Equatable {
    public let status: VocabularyState?
    public let nextToken: String?
    public let vocabularies: [VocabularyInfo]?
}

extension ListMedicalVocabulariesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case status = "Status"
        case vocabularies = "Vocabularies"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(VocabularyState.self, forKey: .status)
        status = statusDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let vocabulariesContainer = try containerValues.decodeIfPresent([VocabularyInfo?].self, forKey: .vocabularies)
        var vocabulariesDecoded0:[VocabularyInfo]? = nil
        if let vocabulariesContainer = vocabulariesContainer {
            vocabulariesDecoded0 = [VocabularyInfo]()
            for structure0 in vocabulariesContainer {
                if let structure0 = structure0 {
                    vocabulariesDecoded0?.append(structure0)
                }
            }
        }
        vocabularies = vocabulariesDecoded0
    }
}
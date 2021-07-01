// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateLFTagInputBody: Equatable {
    public let catalogId: String?
    public let tagKey: String?
    public let tagValues: [String]?
}

extension CreateLFTagInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case catalogId = "CatalogId"
        case tagKey = "TagKey"
        case tagValues = "TagValues"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let catalogIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalogId)
        catalogId = catalogIdDecoded
        let tagKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tagKey)
        tagKey = tagKeyDecoded
        let tagValuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .tagValues)
        var tagValuesDecoded0:[String]? = nil
        if let tagValuesContainer = tagValuesContainer {
            tagValuesDecoded0 = [String]()
            for string0 in tagValuesContainer {
                if let string0 = string0 {
                    tagValuesDecoded0?.append(string0)
                }
            }
        }
        tagValues = tagValuesDecoded0
    }
}
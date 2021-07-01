// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetTagsOutputResponseBody: Equatable {
    public let arn: String?
    public let tags: [String:String]?
}

extension GetTagsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                if let tagvalue0 = tagvalue0 {
                    tagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        tags = tagsDecoded0
    }
}
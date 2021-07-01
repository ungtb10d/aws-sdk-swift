// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateContactFlowInputBody: Equatable {
    public let name: String?
    public let type: ContactFlowType?
    public let description: String?
    public let content: String?
    public let tags: [String:String]?
}

extension CreateContactFlowInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case content = "Content"
        case description = "Description"
        case name = "Name"
        case tags = "Tags"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let typeDecoded = try containerValues.decodeIfPresent(ContactFlowType.self, forKey: .type)
        type = typeDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let contentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .content)
        content = contentDecoded
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
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListTagsLogGroupInputBody: Equatable {
    public let logGroupName: String?
}

extension ListTagsLogGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case logGroupName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let logGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logGroupName)
        logGroupName = logGroupNameDecoded
    }
}
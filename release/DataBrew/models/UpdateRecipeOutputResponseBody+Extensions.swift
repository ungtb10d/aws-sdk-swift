// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateRecipeOutputResponseBody: Equatable {
    public let name: String?
}

extension UpdateRecipeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateSchemaInputBody: Equatable {
    public let name: String?
    public let schema: String?
}

extension CreateSchemaInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case name
        case schema
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let schemaDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schema)
        schema = schemaDecoded
    }
}
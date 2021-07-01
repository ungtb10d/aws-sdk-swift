// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetIntrospectionSchemaOutputResponseBody: Equatable {
    public let schema: Data?
}

extension GetIntrospectionSchemaOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case schema
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let schemaDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .schema)
        schema = schemaDecoded
    }
}
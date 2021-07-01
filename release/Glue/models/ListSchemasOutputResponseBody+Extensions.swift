// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSchemasOutputResponseBody: Equatable {
    public let schemas: [SchemaListItem]?
    public let nextToken: String?
}

extension ListSchemasOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case schemas = "Schemas"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let schemasContainer = try containerValues.decodeIfPresent([SchemaListItem?].self, forKey: .schemas)
        var schemasDecoded0:[SchemaListItem]? = nil
        if let schemasContainer = schemasContainer {
            schemasDecoded0 = [SchemaListItem]()
            for structure0 in schemasContainer {
                if let structure0 = structure0 {
                    schemasDecoded0?.append(structure0)
                }
            }
        }
        schemas = schemasDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
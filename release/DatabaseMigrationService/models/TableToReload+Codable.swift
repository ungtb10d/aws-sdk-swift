// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TableToReload: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case schemaName = "SchemaName"
        case tableName = "TableName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let schemaName = schemaName {
            try encodeContainer.encode(schemaName, forKey: .schemaName)
        }
        if let tableName = tableName {
            try encodeContainer.encode(tableName, forKey: .tableName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let schemaNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schemaName)
        schemaName = schemaNameDecoded
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
    }
}
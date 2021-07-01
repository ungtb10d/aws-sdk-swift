// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResultSetMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case columnInfo = "ColumnInfo"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let columnInfo = columnInfo {
            var columnInfoContainer = encodeContainer.nestedUnkeyedContainer(forKey: .columnInfo)
            for columninfolist0 in columnInfo {
                try columnInfoContainer.encode(columninfolist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let columnInfoContainer = try containerValues.decodeIfPresent([ColumnInfo?].self, forKey: .columnInfo)
        var columnInfoDecoded0:[ColumnInfo]? = nil
        if let columnInfoContainer = columnInfoContainer {
            columnInfoDecoded0 = [ColumnInfo]()
            for structure0 in columnInfoContainer {
                if let structure0 = structure0 {
                    columnInfoDecoded0?.append(structure0)
                }
            }
        }
        columnInfo = columnInfoDecoded0
    }
}
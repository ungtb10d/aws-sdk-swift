// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateTableInputBody: Equatable {
    public let catalogId: String?
    public let databaseName: String?
    public let tableInput: TableInput?
    public let partitionIndexes: [PartitionIndex]?
}

extension CreateTableInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case catalogId = "CatalogId"
        case databaseName = "DatabaseName"
        case partitionIndexes = "PartitionIndexes"
        case tableInput = "TableInput"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let catalogIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalogId)
        catalogId = catalogIdDecoded
        let databaseNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .databaseName)
        databaseName = databaseNameDecoded
        let tableInputDecoded = try containerValues.decodeIfPresent(TableInput.self, forKey: .tableInput)
        tableInput = tableInputDecoded
        let partitionIndexesContainer = try containerValues.decodeIfPresent([PartitionIndex?].self, forKey: .partitionIndexes)
        var partitionIndexesDecoded0:[PartitionIndex]? = nil
        if let partitionIndexesContainer = partitionIndexesContainer {
            partitionIndexesDecoded0 = [PartitionIndex]()
            for structure0 in partitionIndexesContainer {
                if let structure0 = structure0 {
                    partitionIndexesDecoded0?.append(structure0)
                }
            }
        }
        partitionIndexes = partitionIndexesDecoded0
    }
}
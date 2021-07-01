// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDatasetInputBody: Equatable {
    public let datasetName: String?
    public let domain: Domain?
    public let datasetType: DatasetType?
    public let dataFrequency: String?
    public let schema: Schema?
    public let encryptionConfig: EncryptionConfig?
    public let tags: [Tag]?
}

extension CreateDatasetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dataFrequency = "DataFrequency"
        case datasetName = "DatasetName"
        case datasetType = "DatasetType"
        case domain = "Domain"
        case encryptionConfig = "EncryptionConfig"
        case schema = "Schema"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetName)
        datasetName = datasetNameDecoded
        let domainDecoded = try containerValues.decodeIfPresent(Domain.self, forKey: .domain)
        domain = domainDecoded
        let datasetTypeDecoded = try containerValues.decodeIfPresent(DatasetType.self, forKey: .datasetType)
        datasetType = datasetTypeDecoded
        let dataFrequencyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataFrequency)
        dataFrequency = dataFrequencyDecoded
        let schemaDecoded = try containerValues.decodeIfPresent(Schema.self, forKey: .schema)
        schema = schemaDecoded
        let encryptionConfigDecoded = try containerValues.decodeIfPresent(EncryptionConfig.self, forKey: .encryptionConfig)
        encryptionConfig = encryptionConfigDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}
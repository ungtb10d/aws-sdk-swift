// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AutoMLChannel: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case compressionType = "CompressionType"
        case dataSource = "DataSource"
        case targetAttributeName = "TargetAttributeName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let compressionType = compressionType {
            try encodeContainer.encode(compressionType.rawValue, forKey: .compressionType)
        }
        if let dataSource = dataSource {
            try encodeContainer.encode(dataSource, forKey: .dataSource)
        }
        if let targetAttributeName = targetAttributeName {
            try encodeContainer.encode(targetAttributeName, forKey: .targetAttributeName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSourceDecoded = try containerValues.decodeIfPresent(AutoMLDataSource.self, forKey: .dataSource)
        dataSource = dataSourceDecoded
        let compressionTypeDecoded = try containerValues.decodeIfPresent(CompressionType.self, forKey: .compressionType)
        compressionType = compressionTypeDecoded
        let targetAttributeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetAttributeName)
        targetAttributeName = targetAttributeNameDecoded
    }
}
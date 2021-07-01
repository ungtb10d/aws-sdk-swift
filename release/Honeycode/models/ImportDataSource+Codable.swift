// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImportDataSource: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dataSourceConfig
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dataSourceConfig = dataSourceConfig {
            try encodeContainer.encode(dataSourceConfig, forKey: .dataSourceConfig)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSourceConfigDecoded = try containerValues.decodeIfPresent(ImportDataSourceConfig.self, forKey: .dataSourceConfig)
        dataSourceConfig = dataSourceConfigDecoded
    }
}
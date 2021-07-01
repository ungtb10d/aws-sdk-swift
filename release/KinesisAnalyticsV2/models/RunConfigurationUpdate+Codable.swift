// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RunConfigurationUpdate: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationRestoreConfiguration = "ApplicationRestoreConfiguration"
        case flinkRunConfiguration = "FlinkRunConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationRestoreConfiguration = applicationRestoreConfiguration {
            try encodeContainer.encode(applicationRestoreConfiguration, forKey: .applicationRestoreConfiguration)
        }
        if let flinkRunConfiguration = flinkRunConfiguration {
            try encodeContainer.encode(flinkRunConfiguration, forKey: .flinkRunConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flinkRunConfigurationDecoded = try containerValues.decodeIfPresent(FlinkRunConfiguration.self, forKey: .flinkRunConfiguration)
        flinkRunConfiguration = flinkRunConfigurationDecoded
        let applicationRestoreConfigurationDecoded = try containerValues.decodeIfPresent(ApplicationRestoreConfiguration.self, forKey: .applicationRestoreConfiguration)
        applicationRestoreConfiguration = applicationRestoreConfigurationDecoded
    }
}
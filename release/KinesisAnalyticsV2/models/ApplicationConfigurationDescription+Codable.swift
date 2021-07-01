// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ApplicationConfigurationDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationCodeConfigurationDescription = "ApplicationCodeConfigurationDescription"
        case applicationSnapshotConfigurationDescription = "ApplicationSnapshotConfigurationDescription"
        case environmentPropertyDescriptions = "EnvironmentPropertyDescriptions"
        case flinkApplicationConfigurationDescription = "FlinkApplicationConfigurationDescription"
        case runConfigurationDescription = "RunConfigurationDescription"
        case sqlApplicationConfigurationDescription = "SqlApplicationConfigurationDescription"
        case vpcConfigurationDescriptions = "VpcConfigurationDescriptions"
        case zeppelinApplicationConfigurationDescription = "ZeppelinApplicationConfigurationDescription"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationCodeConfigurationDescription = applicationCodeConfigurationDescription {
            try encodeContainer.encode(applicationCodeConfigurationDescription, forKey: .applicationCodeConfigurationDescription)
        }
        if let applicationSnapshotConfigurationDescription = applicationSnapshotConfigurationDescription {
            try encodeContainer.encode(applicationSnapshotConfigurationDescription, forKey: .applicationSnapshotConfigurationDescription)
        }
        if let environmentPropertyDescriptions = environmentPropertyDescriptions {
            try encodeContainer.encode(environmentPropertyDescriptions, forKey: .environmentPropertyDescriptions)
        }
        if let flinkApplicationConfigurationDescription = flinkApplicationConfigurationDescription {
            try encodeContainer.encode(flinkApplicationConfigurationDescription, forKey: .flinkApplicationConfigurationDescription)
        }
        if let runConfigurationDescription = runConfigurationDescription {
            try encodeContainer.encode(runConfigurationDescription, forKey: .runConfigurationDescription)
        }
        if let sqlApplicationConfigurationDescription = sqlApplicationConfigurationDescription {
            try encodeContainer.encode(sqlApplicationConfigurationDescription, forKey: .sqlApplicationConfigurationDescription)
        }
        if let vpcConfigurationDescriptions = vpcConfigurationDescriptions {
            var vpcConfigurationDescriptionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .vpcConfigurationDescriptions)
            for vpcconfigurationdescriptions0 in vpcConfigurationDescriptions {
                try vpcConfigurationDescriptionsContainer.encode(vpcconfigurationdescriptions0)
            }
        }
        if let zeppelinApplicationConfigurationDescription = zeppelinApplicationConfigurationDescription {
            try encodeContainer.encode(zeppelinApplicationConfigurationDescription, forKey: .zeppelinApplicationConfigurationDescription)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sqlApplicationConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(SqlApplicationConfigurationDescription.self, forKey: .sqlApplicationConfigurationDescription)
        sqlApplicationConfigurationDescription = sqlApplicationConfigurationDescriptionDecoded
        let applicationCodeConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(ApplicationCodeConfigurationDescription.self, forKey: .applicationCodeConfigurationDescription)
        applicationCodeConfigurationDescription = applicationCodeConfigurationDescriptionDecoded
        let runConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(RunConfigurationDescription.self, forKey: .runConfigurationDescription)
        runConfigurationDescription = runConfigurationDescriptionDecoded
        let flinkApplicationConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(FlinkApplicationConfigurationDescription.self, forKey: .flinkApplicationConfigurationDescription)
        flinkApplicationConfigurationDescription = flinkApplicationConfigurationDescriptionDecoded
        let environmentPropertyDescriptionsDecoded = try containerValues.decodeIfPresent(EnvironmentPropertyDescriptions.self, forKey: .environmentPropertyDescriptions)
        environmentPropertyDescriptions = environmentPropertyDescriptionsDecoded
        let applicationSnapshotConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(ApplicationSnapshotConfigurationDescription.self, forKey: .applicationSnapshotConfigurationDescription)
        applicationSnapshotConfigurationDescription = applicationSnapshotConfigurationDescriptionDecoded
        let vpcConfigurationDescriptionsContainer = try containerValues.decodeIfPresent([VpcConfigurationDescription?].self, forKey: .vpcConfigurationDescriptions)
        var vpcConfigurationDescriptionsDecoded0:[VpcConfigurationDescription]? = nil
        if let vpcConfigurationDescriptionsContainer = vpcConfigurationDescriptionsContainer {
            vpcConfigurationDescriptionsDecoded0 = [VpcConfigurationDescription]()
            for structure0 in vpcConfigurationDescriptionsContainer {
                if let structure0 = structure0 {
                    vpcConfigurationDescriptionsDecoded0?.append(structure0)
                }
            }
        }
        vpcConfigurationDescriptions = vpcConfigurationDescriptionsDecoded0
        let zeppelinApplicationConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(ZeppelinApplicationConfigurationDescription.self, forKey: .zeppelinApplicationConfigurationDescription)
        zeppelinApplicationConfigurationDescription = zeppelinApplicationConfigurationDescriptionDecoded
    }
}
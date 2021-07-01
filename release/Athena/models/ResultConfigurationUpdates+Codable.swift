// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResultConfigurationUpdates: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case encryptionConfiguration = "EncryptionConfiguration"
        case outputLocation = "OutputLocation"
        case removeEncryptionConfiguration = "RemoveEncryptionConfiguration"
        case removeOutputLocation = "RemoveOutputLocation"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let encryptionConfiguration = encryptionConfiguration {
            try encodeContainer.encode(encryptionConfiguration, forKey: .encryptionConfiguration)
        }
        if let outputLocation = outputLocation {
            try encodeContainer.encode(outputLocation, forKey: .outputLocation)
        }
        if let removeEncryptionConfiguration = removeEncryptionConfiguration {
            try encodeContainer.encode(removeEncryptionConfiguration, forKey: .removeEncryptionConfiguration)
        }
        if let removeOutputLocation = removeOutputLocation {
            try encodeContainer.encode(removeOutputLocation, forKey: .removeOutputLocation)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let outputLocationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputLocation)
        outputLocation = outputLocationDecoded
        let removeOutputLocationDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .removeOutputLocation)
        removeOutputLocation = removeOutputLocationDecoded
        let encryptionConfigurationDecoded = try containerValues.decodeIfPresent(EncryptionConfiguration.self, forKey: .encryptionConfiguration)
        encryptionConfiguration = encryptionConfigurationDecoded
        let removeEncryptionConfigurationDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .removeEncryptionConfiguration)
        removeEncryptionConfiguration = removeEncryptionConfigurationDecoded
    }
}
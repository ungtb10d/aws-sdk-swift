// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutRetentionConfigurationOutputResponseBody: Equatable {
    public let retentionConfiguration: RetentionConfiguration?
}

extension PutRetentionConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case retentionConfiguration = "RetentionConfiguration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let retentionConfigurationDecoded = try containerValues.decodeIfPresent(RetentionConfiguration.self, forKey: .retentionConfiguration)
        retentionConfiguration = retentionConfigurationDecoded
    }
}
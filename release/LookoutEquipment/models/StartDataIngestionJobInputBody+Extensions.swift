// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartDataIngestionJobInputBody: Equatable {
    public let datasetName: String?
    public let ingestionInputConfiguration: IngestionInputConfiguration?
    public let roleArn: String?
    public let clientToken: String?
}

extension StartDataIngestionJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case datasetName = "DatasetName"
        case ingestionInputConfiguration = "IngestionInputConfiguration"
        case roleArn = "RoleArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetName)
        datasetName = datasetNameDecoded
        let ingestionInputConfigurationDecoded = try containerValues.decodeIfPresent(IngestionInputConfiguration.self, forKey: .ingestionInputConfiguration)
        ingestionInputConfiguration = ingestionInputConfigurationDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}
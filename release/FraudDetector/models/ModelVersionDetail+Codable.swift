// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ModelVersionDetail: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case createdTime
        case externalEventsDetail
        case lastUpdatedTime
        case modelId
        case modelType
        case modelVersionNumber
        case status
        case trainingDataSchema
        case trainingDataSource
        case trainingResult
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime, forKey: .createdTime)
        }
        if let externalEventsDetail = externalEventsDetail {
            try encodeContainer.encode(externalEventsDetail, forKey: .externalEventsDetail)
        }
        if let lastUpdatedTime = lastUpdatedTime {
            try encodeContainer.encode(lastUpdatedTime, forKey: .lastUpdatedTime)
        }
        if let modelId = modelId {
            try encodeContainer.encode(modelId, forKey: .modelId)
        }
        if let modelType = modelType {
            try encodeContainer.encode(modelType.rawValue, forKey: .modelType)
        }
        if let modelVersionNumber = modelVersionNumber {
            try encodeContainer.encode(modelVersionNumber, forKey: .modelVersionNumber)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
        if let trainingDataSchema = trainingDataSchema {
            try encodeContainer.encode(trainingDataSchema, forKey: .trainingDataSchema)
        }
        if let trainingDataSource = trainingDataSource {
            try encodeContainer.encode(trainingDataSource.rawValue, forKey: .trainingDataSource)
        }
        if let trainingResult = trainingResult {
            try encodeContainer.encode(trainingResult, forKey: .trainingResult)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modelIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelId)
        modelId = modelIdDecoded
        let modelTypeDecoded = try containerValues.decodeIfPresent(ModelTypeEnum.self, forKey: .modelType)
        modelType = modelTypeDecoded
        let modelVersionNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelVersionNumber)
        modelVersionNumber = modelVersionNumberDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let trainingDataSourceDecoded = try containerValues.decodeIfPresent(TrainingDataSourceEnum.self, forKey: .trainingDataSource)
        trainingDataSource = trainingDataSourceDecoded
        let trainingDataSchemaDecoded = try containerValues.decodeIfPresent(TrainingDataSchema.self, forKey: .trainingDataSchema)
        trainingDataSchema = trainingDataSchemaDecoded
        let externalEventsDetailDecoded = try containerValues.decodeIfPresent(ExternalEventsDetail.self, forKey: .externalEventsDetail)
        externalEventsDetail = externalEventsDetailDecoded
        let trainingResultDecoded = try containerValues.decodeIfPresent(TrainingResult.self, forKey: .trainingResult)
        trainingResult = trainingResultDecoded
        let lastUpdatedTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastUpdatedTime)
        lastUpdatedTime = lastUpdatedTimeDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
    }
}
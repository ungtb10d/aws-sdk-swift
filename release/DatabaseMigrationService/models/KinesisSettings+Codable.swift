// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension KinesisSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case includeControlDetails = "IncludeControlDetails"
        case includeNullAndEmpty = "IncludeNullAndEmpty"
        case includePartitionValue = "IncludePartitionValue"
        case includeTableAlterOperations = "IncludeTableAlterOperations"
        case includeTransactionDetails = "IncludeTransactionDetails"
        case messageFormat = "MessageFormat"
        case partitionIncludeSchemaTable = "PartitionIncludeSchemaTable"
        case serviceAccessRoleArn = "ServiceAccessRoleArn"
        case streamArn = "StreamArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let includeControlDetails = includeControlDetails {
            try encodeContainer.encode(includeControlDetails, forKey: .includeControlDetails)
        }
        if let includeNullAndEmpty = includeNullAndEmpty {
            try encodeContainer.encode(includeNullAndEmpty, forKey: .includeNullAndEmpty)
        }
        if let includePartitionValue = includePartitionValue {
            try encodeContainer.encode(includePartitionValue, forKey: .includePartitionValue)
        }
        if let includeTableAlterOperations = includeTableAlterOperations {
            try encodeContainer.encode(includeTableAlterOperations, forKey: .includeTableAlterOperations)
        }
        if let includeTransactionDetails = includeTransactionDetails {
            try encodeContainer.encode(includeTransactionDetails, forKey: .includeTransactionDetails)
        }
        if let messageFormat = messageFormat {
            try encodeContainer.encode(messageFormat.rawValue, forKey: .messageFormat)
        }
        if let partitionIncludeSchemaTable = partitionIncludeSchemaTable {
            try encodeContainer.encode(partitionIncludeSchemaTable, forKey: .partitionIncludeSchemaTable)
        }
        if let serviceAccessRoleArn = serviceAccessRoleArn {
            try encodeContainer.encode(serviceAccessRoleArn, forKey: .serviceAccessRoleArn)
        }
        if let streamArn = streamArn {
            try encodeContainer.encode(streamArn, forKey: .streamArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamArn)
        streamArn = streamArnDecoded
        let messageFormatDecoded = try containerValues.decodeIfPresent(MessageFormatValue.self, forKey: .messageFormat)
        messageFormat = messageFormatDecoded
        let serviceAccessRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceAccessRoleArn)
        serviceAccessRoleArn = serviceAccessRoleArnDecoded
        let includeTransactionDetailsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includeTransactionDetails)
        includeTransactionDetails = includeTransactionDetailsDecoded
        let includePartitionValueDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includePartitionValue)
        includePartitionValue = includePartitionValueDecoded
        let partitionIncludeSchemaTableDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .partitionIncludeSchemaTable)
        partitionIncludeSchemaTable = partitionIncludeSchemaTableDecoded
        let includeTableAlterOperationsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includeTableAlterOperations)
        includeTableAlterOperations = includeTableAlterOperationsDecoded
        let includeControlDetailsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includeControlDetails)
        includeControlDetails = includeControlDetailsDecoded
        let includeNullAndEmptyDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includeNullAndEmpty)
        includeNullAndEmpty = includeNullAndEmptyDecoded
    }
}
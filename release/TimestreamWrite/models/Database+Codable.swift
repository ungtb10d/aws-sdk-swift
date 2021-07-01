// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Database: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationTime = "CreationTime"
        case databaseName = "DatabaseName"
        case kmsKeyId = "KmsKeyId"
        case lastUpdatedTime = "LastUpdatedTime"
        case tableCount = "TableCount"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let databaseName = databaseName {
            try encodeContainer.encode(databaseName, forKey: .databaseName)
        }
        if let kmsKeyId = kmsKeyId {
            try encodeContainer.encode(kmsKeyId, forKey: .kmsKeyId)
        }
        if let lastUpdatedTime = lastUpdatedTime {
            try encodeContainer.encode(lastUpdatedTime.timeIntervalSince1970, forKey: .lastUpdatedTime)
        }
        if tableCount != 0 {
            try encodeContainer.encode(tableCount, forKey: .tableCount)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let databaseNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .databaseName)
        databaseName = databaseNameDecoded
        let tableCountDecoded = try containerValues.decode(Int.self, forKey: .tableCount)
        tableCount = tableCountDecoded
        let kmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyId)
        kmsKeyId = kmsKeyIdDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let lastUpdatedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedTime)
        lastUpdatedTime = lastUpdatedTimeDecoded
    }
}
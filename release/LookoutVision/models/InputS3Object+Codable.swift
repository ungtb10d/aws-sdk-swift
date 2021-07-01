// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InputS3Object: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case versionId = "VersionId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bucket = bucket {
            try encodeContainer.encode(bucket, forKey: .bucket)
        }
        if let key = key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let versionId = versionId {
            try encodeContainer.encode(versionId, forKey: .versionId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucket)
        bucket = bucketDecoded
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let versionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .versionId)
        versionId = versionIdDecoded
    }
}
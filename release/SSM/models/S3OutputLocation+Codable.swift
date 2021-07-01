// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3OutputLocation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case outputS3BucketName = "OutputS3BucketName"
        case outputS3KeyPrefix = "OutputS3KeyPrefix"
        case outputS3Region = "OutputS3Region"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let outputS3BucketName = outputS3BucketName {
            try encodeContainer.encode(outputS3BucketName, forKey: .outputS3BucketName)
        }
        if let outputS3KeyPrefix = outputS3KeyPrefix {
            try encodeContainer.encode(outputS3KeyPrefix, forKey: .outputS3KeyPrefix)
        }
        if let outputS3Region = outputS3Region {
            try encodeContainer.encode(outputS3Region, forKey: .outputS3Region)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let outputS3RegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputS3Region)
        outputS3Region = outputS3RegionDecoded
        let outputS3BucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputS3BucketName)
        outputS3BucketName = outputS3BucketNameDecoded
        let outputS3KeyPrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outputS3KeyPrefix)
        outputS3KeyPrefix = outputS3KeyPrefixDecoded
    }
}
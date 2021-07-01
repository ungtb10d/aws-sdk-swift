// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension JobOperation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lambdaInvoke = "LambdaInvoke"
        case s3DeleteObjectTagging = "S3DeleteObjectTagging"
        case s3InitiateRestoreObject = "S3InitiateRestoreObject"
        case s3PutObjectAcl = "S3PutObjectAcl"
        case s3PutObjectCopy = "S3PutObjectCopy"
        case s3PutObjectLegalHold = "S3PutObjectLegalHold"
        case s3PutObjectRetention = "S3PutObjectRetention"
        case s3PutObjectTagging = "S3PutObjectTagging"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let lambdaInvoke = lambdaInvoke {
            try container.encode(lambdaInvoke, forKey: Key("lambdaInvoke"))
        }
        if let s3DeleteObjectTagging = s3DeleteObjectTagging {
            try container.encode(s3DeleteObjectTagging, forKey: Key("s3DeleteObjectTagging"))
        }
        if let s3InitiateRestoreObject = s3InitiateRestoreObject {
            try container.encode(s3InitiateRestoreObject, forKey: Key("s3InitiateRestoreObject"))
        }
        if let s3PutObjectAcl = s3PutObjectAcl {
            try container.encode(s3PutObjectAcl, forKey: Key("s3PutObjectAcl"))
        }
        if let s3PutObjectCopy = s3PutObjectCopy {
            try container.encode(s3PutObjectCopy, forKey: Key("s3PutObjectCopy"))
        }
        if let s3PutObjectLegalHold = s3PutObjectLegalHold {
            try container.encode(s3PutObjectLegalHold, forKey: Key("s3PutObjectLegalHold"))
        }
        if let s3PutObjectRetention = s3PutObjectRetention {
            try container.encode(s3PutObjectRetention, forKey: Key("s3PutObjectRetention"))
        }
        if let s3PutObjectTagging = s3PutObjectTagging {
            try container.encode(s3PutObjectTagging, forKey: Key("s3PutObjectTagging"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lambdaInvokeDecoded = try containerValues.decodeIfPresent(LambdaInvokeOperation.self, forKey: .lambdaInvoke)
        lambdaInvoke = lambdaInvokeDecoded
        let s3PutObjectCopyDecoded = try containerValues.decodeIfPresent(S3CopyObjectOperation.self, forKey: .s3PutObjectCopy)
        s3PutObjectCopy = s3PutObjectCopyDecoded
        let s3PutObjectAclDecoded = try containerValues.decodeIfPresent(S3SetObjectAclOperation.self, forKey: .s3PutObjectAcl)
        s3PutObjectAcl = s3PutObjectAclDecoded
        let s3PutObjectTaggingDecoded = try containerValues.decodeIfPresent(S3SetObjectTaggingOperation.self, forKey: .s3PutObjectTagging)
        s3PutObjectTagging = s3PutObjectTaggingDecoded
        let s3DeleteObjectTaggingDecoded = try containerValues.decodeIfPresent(S3DeleteObjectTaggingOperation.self, forKey: .s3DeleteObjectTagging)
        s3DeleteObjectTagging = s3DeleteObjectTaggingDecoded
        let s3InitiateRestoreObjectDecoded = try containerValues.decodeIfPresent(S3InitiateRestoreObjectOperation.self, forKey: .s3InitiateRestoreObject)
        s3InitiateRestoreObject = s3InitiateRestoreObjectDecoded
        let s3PutObjectLegalHoldDecoded = try containerValues.decodeIfPresent(S3SetObjectLegalHoldOperation.self, forKey: .s3PutObjectLegalHold)
        s3PutObjectLegalHold = s3PutObjectLegalHoldDecoded
        let s3PutObjectRetentionDecoded = try containerValues.decodeIfPresent(S3SetObjectRetentionOperation.self, forKey: .s3PutObjectRetention)
        s3PutObjectRetention = s3PutObjectRetentionDecoded
    }
}
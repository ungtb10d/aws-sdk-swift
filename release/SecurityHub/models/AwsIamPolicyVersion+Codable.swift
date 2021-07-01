// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsIamPolicyVersion: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createDate = "CreateDate"
        case isDefaultVersion = "IsDefaultVersion"
        case versionId = "VersionId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createDate = createDate {
            try encodeContainer.encode(createDate, forKey: .createDate)
        }
        if isDefaultVersion != false {
            try encodeContainer.encode(isDefaultVersion, forKey: .isDefaultVersion)
        }
        if let versionId = versionId {
            try encodeContainer.encode(versionId, forKey: .versionId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let versionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .versionId)
        versionId = versionIdDecoded
        let isDefaultVersionDecoded = try containerValues.decode(Bool.self, forKey: .isDefaultVersion)
        isDefaultVersion = isDefaultVersionDecoded
        let createDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createDate)
        createDate = createDateDecoded
    }
}
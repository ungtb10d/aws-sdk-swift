// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension JobManifestLocation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case objectArn = "ObjectArn"
        case objectVersionId = "ObjectVersionId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let eTag = eTag {
            try container.encode(eTag, forKey: Key("eTag"))
        }
        if let objectArn = objectArn {
            try container.encode(objectArn, forKey: Key("objectArn"))
        }
        if let objectVersionId = objectVersionId {
            try container.encode(objectVersionId, forKey: Key("objectVersionId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let objectArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .objectArn)
        objectArn = objectArnDecoded
        let objectVersionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .objectVersionId)
        objectVersionId = objectVersionIdDecoded
        let eTagDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eTag)
        eTag = eTagDecoded
    }
}
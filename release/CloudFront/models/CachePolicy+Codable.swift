// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CachePolicy: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cachePolicyConfig = "CachePolicyConfig"
        case id = "Id"
        case lastModifiedTime = "LastModifiedTime"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let cachePolicyConfig = cachePolicyConfig {
            try container.encode(cachePolicyConfig, forKey: Key("cachePolicyConfig"))
        }
        if let id = id {
            try container.encode(id, forKey: Key("id"))
        }
        if let lastModifiedTime = lastModifiedTime {
            try container.encode(TimestampWrapper(lastModifiedTime, format: .dateTime), forKey: Key("lastModifiedTime"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastModifiedTime)
        var lastModifiedTimeBuffer:Date? = nil
        if let lastModifiedTimeDecoded = lastModifiedTimeDecoded {
            lastModifiedTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(lastModifiedTimeDecoded, format: .dateTime)
        }
        lastModifiedTime = lastModifiedTimeBuffer
        let cachePolicyConfigDecoded = try containerValues.decodeIfPresent(CachePolicyConfig.self, forKey: .cachePolicyConfig)
        cachePolicyConfig = cachePolicyConfigDecoded
    }
}
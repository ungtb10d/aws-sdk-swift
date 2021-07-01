// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InvalidationSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createTime = "CreateTime"
        case id = "Id"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let createTime = createTime {
            try container.encode(TimestampWrapper(createTime, format: .dateTime), forKey: Key("createTime"))
        }
        if let id = id {
            try container.encode(id, forKey: Key("id"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("status"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let createTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createTime)
        var createTimeBuffer:Date? = nil
        if let createTimeDecoded = createTimeDecoded {
            createTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(createTimeDecoded, format: .dateTime)
        }
        createTime = createTimeBuffer
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}
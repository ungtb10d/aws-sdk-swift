// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplicationTime: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case status = "Status"
        case time = "Time"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("status"))
        }
        if let time = time {
            try container.encode(time, forKey: Key("time"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(ReplicationTimeStatus.self, forKey: .status)
        status = statusDecoded
        let timeDecoded = try containerValues.decodeIfPresent(ReplicationTimeValue.self, forKey: .time)
        time = timeDecoded
    }
}
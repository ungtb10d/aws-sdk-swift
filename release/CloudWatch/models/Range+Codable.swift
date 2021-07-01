// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Range: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case startTime = "StartTime"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let endTime = endTime {
            try container.encode(TimestampWrapper(endTime, format: .dateTime), forKey: Key("endTime"))
        }
        if let startTime = startTime {
            try container.encode(TimestampWrapper(startTime, format: .dateTime), forKey: Key("startTime"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let startTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .startTime)
        var startTimeBuffer:Date? = nil
        if let startTimeDecoded = startTimeDecoded {
            startTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(startTimeDecoded, format: .dateTime)
        }
        startTime = startTimeBuffer
        let endTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endTime)
        var endTimeBuffer:Date? = nil
        if let endTimeDecoded = endTimeDecoded {
            endTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(endTimeDecoded, format: .dateTime)
        }
        endTime = endTimeBuffer
    }
}
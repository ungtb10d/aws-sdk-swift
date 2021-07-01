// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MetricStreamEntry: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationDate = "CreationDate"
        case firehoseArn = "FirehoseArn"
        case lastUpdateDate = "LastUpdateDate"
        case name = "Name"
        case outputFormat = "OutputFormat"
        case state = "State"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let arn = arn {
            try container.encode(arn, forKey: Key("Arn"))
        }
        if let creationDate = creationDate {
            try container.encode(TimestampWrapper(creationDate, format: .dateTime), forKey: Key("creationDate"))
        }
        if let firehoseArn = firehoseArn {
            try container.encode(firehoseArn, forKey: Key("FirehoseArn"))
        }
        if let lastUpdateDate = lastUpdateDate {
            try container.encode(TimestampWrapper(lastUpdateDate, format: .dateTime), forKey: Key("lastUpdateDate"))
        }
        if let name = name {
            try container.encode(name, forKey: Key("Name"))
        }
        if let outputFormat = outputFormat {
            try container.encode(outputFormat, forKey: Key("OutputFormat"))
        }
        if let state = state {
            try container.encode(state, forKey: Key("State"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationDate)
        var creationDateBuffer:Date? = nil
        if let creationDateDecoded = creationDateDecoded {
            creationDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(creationDateDecoded, format: .dateTime)
        }
        creationDate = creationDateBuffer
        let lastUpdateDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastUpdateDate)
        var lastUpdateDateBuffer:Date? = nil
        if let lastUpdateDateDecoded = lastUpdateDateDecoded {
            lastUpdateDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(lastUpdateDateDecoded, format: .dateTime)
        }
        lastUpdateDate = lastUpdateDateBuffer
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let firehoseArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .firehoseArn)
        firehoseArn = firehoseArnDecoded
        let stateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .state)
        state = stateDecoded
        let outputFormatDecoded = try containerValues.decodeIfPresent(MetricStreamOutputFormat.self, forKey: .outputFormat)
        outputFormat = outputFormatDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AlarmHistoryItem: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case alarmName = "AlarmName"
        case alarmType = "AlarmType"
        case historyData = "HistoryData"
        case historyItemType = "HistoryItemType"
        case historySummary = "HistorySummary"
        case timestamp = "Timestamp"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let alarmName = alarmName {
            try container.encode(alarmName, forKey: Key("AlarmName"))
        }
        if let alarmType = alarmType {
            try container.encode(alarmType, forKey: Key("AlarmType"))
        }
        if let historyData = historyData {
            try container.encode(historyData, forKey: Key("HistoryData"))
        }
        if let historyItemType = historyItemType {
            try container.encode(historyItemType, forKey: Key("HistoryItemType"))
        }
        if let historySummary = historySummary {
            try container.encode(historySummary, forKey: Key("HistorySummary"))
        }
        if let timestamp = timestamp {
            try container.encode(TimestampWrapper(timestamp, format: .dateTime), forKey: Key("timestamp"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let alarmNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alarmName)
        alarmName = alarmNameDecoded
        let alarmTypeDecoded = try containerValues.decodeIfPresent(AlarmType.self, forKey: .alarmType)
        alarmType = alarmTypeDecoded
        let timestampDecoded = try containerValues.decodeIfPresent(String.self, forKey: .timestamp)
        var timestampBuffer:Date? = nil
        if let timestampDecoded = timestampDecoded {
            timestampBuffer = try TimestampWrapperDecoder.parseDateStringValue(timestampDecoded, format: .dateTime)
        }
        timestamp = timestampBuffer
        let historyItemTypeDecoded = try containerValues.decodeIfPresent(HistoryItemType.self, forKey: .historyItemType)
        historyItemType = historyItemTypeDecoded
        let historySummaryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .historySummary)
        historySummary = historySummaryDecoded
        let historyDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .historyData)
        historyData = historyDataDecoded
    }
}
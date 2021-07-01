// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct IncreaseStreamRetentionPeriodInputBody: Equatable {
    public let streamName: String?
    public let retentionPeriodHours: Int?
}

extension IncreaseStreamRetentionPeriodInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case retentionPeriodHours = "RetentionPeriodHours"
        case streamName = "StreamName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamName)
        streamName = streamNameDecoded
        let retentionPeriodHoursDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .retentionPeriodHours)
        retentionPeriodHours = retentionPeriodHoursDecoded
    }
}
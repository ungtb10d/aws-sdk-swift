// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRelationalDatabaseLogEventsInputBody: Equatable {
    public let relationalDatabaseName: String?
    public let logStreamName: String?
    public let startTime: Date?
    public let endTime: Date?
    public let startFromHead: Bool?
    public let pageToken: String?
}

extension GetRelationalDatabaseLogEventsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endTime
        case logStreamName
        case pageToken
        case relationalDatabaseName
        case startFromHead
        case startTime
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let relationalDatabaseNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .relationalDatabaseName)
        relationalDatabaseName = relationalDatabaseNameDecoded
        let logStreamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logStreamName)
        logStreamName = logStreamNameDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
        let startFromHeadDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .startFromHead)
        startFromHead = startFromHeadDecoded
        let pageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pageToken)
        pageToken = pageTokenDecoded
    }
}
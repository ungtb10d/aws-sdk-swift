// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BotLocaleSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case botLocaleStatus
        case description
        case lastBuildSubmittedDateTime
        case lastUpdatedDateTime
        case localeId
        case localeName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let botLocaleStatus = botLocaleStatus {
            try encodeContainer.encode(botLocaleStatus.rawValue, forKey: .botLocaleStatus)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let lastBuildSubmittedDateTime = lastBuildSubmittedDateTime {
            try encodeContainer.encode(lastBuildSubmittedDateTime.timeIntervalSince1970, forKey: .lastBuildSubmittedDateTime)
        }
        if let lastUpdatedDateTime = lastUpdatedDateTime {
            try encodeContainer.encode(lastUpdatedDateTime.timeIntervalSince1970, forKey: .lastUpdatedDateTime)
        }
        if let localeId = localeId {
            try encodeContainer.encode(localeId, forKey: .localeId)
        }
        if let localeName = localeName {
            try encodeContainer.encode(localeName, forKey: .localeName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let localeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .localeId)
        localeId = localeIdDecoded
        let localeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .localeName)
        localeName = localeNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let botLocaleStatusDecoded = try containerValues.decodeIfPresent(BotLocaleStatus.self, forKey: .botLocaleStatus)
        botLocaleStatus = botLocaleStatusDecoded
        let lastUpdatedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDateTime)
        lastUpdatedDateTime = lastUpdatedDateTimeDecoded
        let lastBuildSubmittedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastBuildSubmittedDateTime)
        lastBuildSubmittedDateTime = lastBuildSubmittedDateTimeDecoded
    }
}
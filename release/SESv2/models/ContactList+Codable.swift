// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ContactList: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case contactListName = "ContactListName"
        case lastUpdatedTimestamp = "LastUpdatedTimestamp"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contactListName = contactListName {
            try encodeContainer.encode(contactListName, forKey: .contactListName)
        }
        if let lastUpdatedTimestamp = lastUpdatedTimestamp {
            try encodeContainer.encode(lastUpdatedTimestamp.timeIntervalSince1970, forKey: .lastUpdatedTimestamp)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contactListNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contactListName)
        contactListName = contactListNameDecoded
        let lastUpdatedTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedTimestamp)
        lastUpdatedTimestamp = lastUpdatedTimestampDecoded
    }
}
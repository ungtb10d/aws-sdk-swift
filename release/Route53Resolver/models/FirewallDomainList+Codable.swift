// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FirewallDomainList: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationTime = "CreationTime"
        case creatorRequestId = "CreatorRequestId"
        case domainCount = "DomainCount"
        case id = "Id"
        case managedOwnerName = "ManagedOwnerName"
        case modificationTime = "ModificationTime"
        case name = "Name"
        case status = "Status"
        case statusMessage = "StatusMessage"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime, forKey: .creationTime)
        }
        if let creatorRequestId = creatorRequestId {
            try encodeContainer.encode(creatorRequestId, forKey: .creatorRequestId)
        }
        if let domainCount = domainCount {
            try encodeContainer.encode(domainCount, forKey: .domainCount)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let managedOwnerName = managedOwnerName {
            try encodeContainer.encode(managedOwnerName, forKey: .managedOwnerName)
        }
        if let modificationTime = modificationTime {
            try encodeContainer.encode(modificationTime, forKey: .modificationTime)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let statusMessage = statusMessage {
            try encodeContainer.encode(statusMessage, forKey: .statusMessage)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let domainCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .domainCount)
        domainCount = domainCountDecoded
        let statusDecoded = try containerValues.decodeIfPresent(FirewallDomainListStatus.self, forKey: .status)
        status = statusDecoded
        let statusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusMessage)
        statusMessage = statusMessageDecoded
        let managedOwnerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .managedOwnerName)
        managedOwnerName = managedOwnerNameDecoded
        let creatorRequestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creatorRequestId)
        creatorRequestId = creatorRequestIdDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let modificationTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modificationTime)
        modificationTime = modificationTimeDecoded
    }
}
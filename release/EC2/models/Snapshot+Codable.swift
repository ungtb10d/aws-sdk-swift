// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Snapshot: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dataEncryptionKeyId = "dataEncryptionKeyId"
        case description = "description"
        case encrypted = "encrypted"
        case kmsKeyId = "kmsKeyId"
        case outpostArn = "outpostArn"
        case ownerAlias = "ownerAlias"
        case ownerId = "ownerId"
        case progress = "progress"
        case snapshotId = "snapshotId"
        case startTime = "startTime"
        case state = "status"
        case stateMessage = "statusMessage"
        case tags = "tagSet"
        case volumeId = "volumeId"
        case volumeSize = "volumeSize"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dataEncryptionKeyId = dataEncryptionKeyId {
            try container.encode(dataEncryptionKeyId, forKey: Key("DataEncryptionKeyId"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if encrypted != false {
            try container.encode(encrypted, forKey: Key("Encrypted"))
        }
        if let kmsKeyId = kmsKeyId {
            try container.encode(kmsKeyId, forKey: Key("KmsKeyId"))
        }
        if let outpostArn = outpostArn {
            try container.encode(outpostArn, forKey: Key("OutpostArn"))
        }
        if let ownerAlias = ownerAlias {
            try container.encode(ownerAlias, forKey: Key("OwnerAlias"))
        }
        if let ownerId = ownerId {
            try container.encode(ownerId, forKey: Key("OwnerId"))
        }
        if let progress = progress {
            try container.encode(progress, forKey: Key("Progress"))
        }
        if let snapshotId = snapshotId {
            try container.encode(snapshotId, forKey: Key("SnapshotId"))
        }
        if let startTime = startTime {
            try container.encode(TimestampWrapper(startTime, format: .dateTime), forKey: Key("StartTime"))
        }
        if let state = state {
            try container.encode(state, forKey: Key("Status"))
        }
        if let stateMessage = stateMessage {
            try container.encode(stateMessage, forKey: Key("StatusMessage"))
        }
        if let tags = tags {
            if !tags.isEmpty {
                for (index0, tag0) in tags.enumerated() {
                    var tagsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSet.\(index0.advanced(by: 1))"))
                    try tagsContainer0.encode(tag0, forKey: Key(""))
                }
            }
        }
        if let volumeId = volumeId {
            try container.encode(volumeId, forKey: Key("VolumeId"))
        }
        if volumeSize != 0 {
            try container.encode(volumeSize, forKey: Key("VolumeSize"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataEncryptionKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataEncryptionKeyId)
        dataEncryptionKeyId = dataEncryptionKeyIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let encryptedDecoded = try containerValues.decode(Bool.self, forKey: .encrypted)
        encrypted = encryptedDecoded
        let kmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyId)
        kmsKeyId = kmsKeyIdDecoded
        let ownerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ownerId)
        ownerId = ownerIdDecoded
        let progressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .progress)
        progress = progressDecoded
        let snapshotIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snapshotId)
        snapshotId = snapshotIdDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .startTime)
        var startTimeBuffer:Date? = nil
        if let startTimeDecoded = startTimeDecoded {
            startTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(startTimeDecoded, format: .dateTime)
        }
        startTime = startTimeBuffer
        let stateDecoded = try containerValues.decodeIfPresent(SnapshotState.self, forKey: .state)
        state = stateDecoded
        let stateMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stateMessage)
        stateMessage = stateMessageDecoded
        let volumeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .volumeId)
        volumeId = volumeIdDecoded
        let volumeSizeDecoded = try containerValues.decode(Int.self, forKey: .volumeSize)
        volumeSize = volumeSizeDecoded
        let ownerAliasDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ownerAlias)
        ownerAlias = ownerAliasDecoded
        let outpostArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .outpostArn)
        outpostArn = outpostArnDecoded
        if containerValues.contains(.tags) {
            struct KeyVal0{struct item{}}
            let tagsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .tags)
            if let tagsWrappedContainer = tagsWrappedContainer {
                let tagsContainer = try tagsWrappedContainer.decodeIfPresent([Tag].self, forKey: .member)
                var tagsBuffer:[Tag]? = nil
                if let tagsContainer = tagsContainer {
                    tagsBuffer = [Tag]()
                    for structureContainer0 in tagsContainer {
                        tagsBuffer?.append(structureContainer0)
                    }
                }
                tags = tagsBuffer
            } else {
                tags = []
            }
        } else {
            tags = nil
        }
    }
}
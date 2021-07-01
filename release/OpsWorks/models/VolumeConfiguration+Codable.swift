// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VolumeConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case encrypted = "Encrypted"
        case iops = "Iops"
        case mountPoint = "MountPoint"
        case numberOfDisks = "NumberOfDisks"
        case raidLevel = "RaidLevel"
        case size = "Size"
        case volumeType = "VolumeType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let encrypted = encrypted {
            try encodeContainer.encode(encrypted, forKey: .encrypted)
        }
        if let iops = iops {
            try encodeContainer.encode(iops, forKey: .iops)
        }
        if let mountPoint = mountPoint {
            try encodeContainer.encode(mountPoint, forKey: .mountPoint)
        }
        if let numberOfDisks = numberOfDisks {
            try encodeContainer.encode(numberOfDisks, forKey: .numberOfDisks)
        }
        if let raidLevel = raidLevel {
            try encodeContainer.encode(raidLevel, forKey: .raidLevel)
        }
        if let size = size {
            try encodeContainer.encode(size, forKey: .size)
        }
        if let volumeType = volumeType {
            try encodeContainer.encode(volumeType, forKey: .volumeType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let mountPointDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mountPoint)
        mountPoint = mountPointDecoded
        let raidLevelDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .raidLevel)
        raidLevel = raidLevelDecoded
        let numberOfDisksDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .numberOfDisks)
        numberOfDisks = numberOfDisksDecoded
        let sizeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .size)
        size = sizeDecoded
        let volumeTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .volumeType)
        volumeType = volumeTypeDecoded
        let iopsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .iops)
        iops = iopsDecoded
        let encryptedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .encrypted)
        encrypted = encryptedDecoded
    }
}
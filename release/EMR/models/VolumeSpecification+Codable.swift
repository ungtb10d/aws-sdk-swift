// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VolumeSpecification: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case iops = "Iops"
        case sizeInGB = "SizeInGB"
        case volumeType = "VolumeType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let iops = iops {
            try encodeContainer.encode(iops, forKey: .iops)
        }
        if let sizeInGB = sizeInGB {
            try encodeContainer.encode(sizeInGB, forKey: .sizeInGB)
        }
        if let volumeType = volumeType {
            try encodeContainer.encode(volumeType, forKey: .volumeType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let volumeTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .volumeType)
        volumeType = volumeTypeDecoded
        let iopsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .iops)
        iops = iopsDecoded
        let sizeInGBDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .sizeInGB)
        sizeInGB = sizeInGBDecoded
    }
}
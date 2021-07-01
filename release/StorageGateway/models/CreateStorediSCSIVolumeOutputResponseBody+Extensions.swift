// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateStorediSCSIVolumeOutputResponseBody: Equatable {
    public let volumeARN: String?
    public let volumeSizeInBytes: Int
    public let targetARN: String?
}

extension CreateStorediSCSIVolumeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case targetARN = "TargetARN"
        case volumeARN = "VolumeARN"
        case volumeSizeInBytes = "VolumeSizeInBytes"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let volumeARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .volumeARN)
        volumeARN = volumeARNDecoded
        let volumeSizeInBytesDecoded = try containerValues.decode(Int.self, forKey: .volumeSizeInBytes)
        volumeSizeInBytes = volumeSizeInBytesDecoded
        let targetARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetARN)
        targetARN = targetARNDecoded
    }
}
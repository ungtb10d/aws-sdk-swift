// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateShardCountInputBody: Equatable {
    public let streamName: String?
    public let targetShardCount: Int?
    public let scalingType: ScalingType?
}

extension UpdateShardCountInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case scalingType = "ScalingType"
        case streamName = "StreamName"
        case targetShardCount = "TargetShardCount"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamName)
        streamName = streamNameDecoded
        let targetShardCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .targetShardCount)
        targetShardCount = targetShardCountDecoded
        let scalingTypeDecoded = try containerValues.decodeIfPresent(ScalingType.self, forKey: .scalingType)
        scalingType = scalingTypeDecoded
    }
}
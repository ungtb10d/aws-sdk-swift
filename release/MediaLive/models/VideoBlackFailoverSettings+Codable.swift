// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VideoBlackFailoverSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case blackDetectThreshold = "blackDetectThreshold"
        case videoBlackThresholdMsec = "videoBlackThresholdMsec"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if blackDetectThreshold != 0.0 {
            try encodeContainer.encode(blackDetectThreshold, forKey: .blackDetectThreshold)
        }
        if videoBlackThresholdMsec != 0 {
            try encodeContainer.encode(videoBlackThresholdMsec, forKey: .videoBlackThresholdMsec)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let blackDetectThresholdDecoded = try containerValues.decode(Double.self, forKey: .blackDetectThreshold)
        blackDetectThreshold = blackDetectThresholdDecoded
        let videoBlackThresholdMsecDecoded = try containerValues.decode(Int.self, forKey: .videoBlackThresholdMsec)
        videoBlackThresholdMsec = videoBlackThresholdMsecDecoded
    }
}
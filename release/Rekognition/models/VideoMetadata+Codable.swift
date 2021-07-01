// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VideoMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case codec = "Codec"
        case durationMillis = "DurationMillis"
        case format = "Format"
        case frameHeight = "FrameHeight"
        case frameRate = "FrameRate"
        case frameWidth = "FrameWidth"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let codec = codec {
            try encodeContainer.encode(codec, forKey: .codec)
        }
        if let durationMillis = durationMillis {
            try encodeContainer.encode(durationMillis, forKey: .durationMillis)
        }
        if let format = format {
            try encodeContainer.encode(format, forKey: .format)
        }
        if let frameHeight = frameHeight {
            try encodeContainer.encode(frameHeight, forKey: .frameHeight)
        }
        if let frameRate = frameRate {
            try encodeContainer.encode(frameRate, forKey: .frameRate)
        }
        if let frameWidth = frameWidth {
            try encodeContainer.encode(frameWidth, forKey: .frameWidth)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codecDecoded = try containerValues.decodeIfPresent(String.self, forKey: .codec)
        codec = codecDecoded
        let durationMillisDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .durationMillis)
        durationMillis = durationMillisDecoded
        let formatDecoded = try containerValues.decodeIfPresent(String.self, forKey: .format)
        format = formatDecoded
        let frameRateDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .frameRate)
        frameRate = frameRateDecoded
        let frameHeightDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .frameHeight)
        frameHeight = frameHeightDecoded
        let frameWidthDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .frameWidth)
        frameWidth = frameWidthDecoded
    }
}
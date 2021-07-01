// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Eac3Settings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attenuationControl = "attenuationControl"
        case bitrate = "bitrate"
        case bitstreamMode = "bitstreamMode"
        case codingMode = "codingMode"
        case dcFilter = "dcFilter"
        case dialnorm = "dialnorm"
        case dynamicRangeCompressionLine = "dynamicRangeCompressionLine"
        case dynamicRangeCompressionRf = "dynamicRangeCompressionRf"
        case lfeControl = "lfeControl"
        case lfeFilter = "lfeFilter"
        case loRoCenterMixLevel = "loRoCenterMixLevel"
        case loRoSurroundMixLevel = "loRoSurroundMixLevel"
        case ltRtCenterMixLevel = "ltRtCenterMixLevel"
        case ltRtSurroundMixLevel = "ltRtSurroundMixLevel"
        case metadataControl = "metadataControl"
        case passthroughControl = "passthroughControl"
        case phaseControl = "phaseControl"
        case sampleRate = "sampleRate"
        case stereoDownmix = "stereoDownmix"
        case surroundExMode = "surroundExMode"
        case surroundMode = "surroundMode"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attenuationControl = attenuationControl {
            try encodeContainer.encode(attenuationControl.rawValue, forKey: .attenuationControl)
        }
        if bitrate != 0 {
            try encodeContainer.encode(bitrate, forKey: .bitrate)
        }
        if let bitstreamMode = bitstreamMode {
            try encodeContainer.encode(bitstreamMode.rawValue, forKey: .bitstreamMode)
        }
        if let codingMode = codingMode {
            try encodeContainer.encode(codingMode.rawValue, forKey: .codingMode)
        }
        if let dcFilter = dcFilter {
            try encodeContainer.encode(dcFilter.rawValue, forKey: .dcFilter)
        }
        if dialnorm != 0 {
            try encodeContainer.encode(dialnorm, forKey: .dialnorm)
        }
        if let dynamicRangeCompressionLine = dynamicRangeCompressionLine {
            try encodeContainer.encode(dynamicRangeCompressionLine.rawValue, forKey: .dynamicRangeCompressionLine)
        }
        if let dynamicRangeCompressionRf = dynamicRangeCompressionRf {
            try encodeContainer.encode(dynamicRangeCompressionRf.rawValue, forKey: .dynamicRangeCompressionRf)
        }
        if let lfeControl = lfeControl {
            try encodeContainer.encode(lfeControl.rawValue, forKey: .lfeControl)
        }
        if let lfeFilter = lfeFilter {
            try encodeContainer.encode(lfeFilter.rawValue, forKey: .lfeFilter)
        }
        if loRoCenterMixLevel != 0.0 {
            try encodeContainer.encode(loRoCenterMixLevel, forKey: .loRoCenterMixLevel)
        }
        if loRoSurroundMixLevel != 0.0 {
            try encodeContainer.encode(loRoSurroundMixLevel, forKey: .loRoSurroundMixLevel)
        }
        if ltRtCenterMixLevel != 0.0 {
            try encodeContainer.encode(ltRtCenterMixLevel, forKey: .ltRtCenterMixLevel)
        }
        if ltRtSurroundMixLevel != 0.0 {
            try encodeContainer.encode(ltRtSurroundMixLevel, forKey: .ltRtSurroundMixLevel)
        }
        if let metadataControl = metadataControl {
            try encodeContainer.encode(metadataControl.rawValue, forKey: .metadataControl)
        }
        if let passthroughControl = passthroughControl {
            try encodeContainer.encode(passthroughControl.rawValue, forKey: .passthroughControl)
        }
        if let phaseControl = phaseControl {
            try encodeContainer.encode(phaseControl.rawValue, forKey: .phaseControl)
        }
        if sampleRate != 0 {
            try encodeContainer.encode(sampleRate, forKey: .sampleRate)
        }
        if let stereoDownmix = stereoDownmix {
            try encodeContainer.encode(stereoDownmix.rawValue, forKey: .stereoDownmix)
        }
        if let surroundExMode = surroundExMode {
            try encodeContainer.encode(surroundExMode.rawValue, forKey: .surroundExMode)
        }
        if let surroundMode = surroundMode {
            try encodeContainer.encode(surroundMode.rawValue, forKey: .surroundMode)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attenuationControlDecoded = try containerValues.decodeIfPresent(Eac3AttenuationControl.self, forKey: .attenuationControl)
        attenuationControl = attenuationControlDecoded
        let bitrateDecoded = try containerValues.decode(Int.self, forKey: .bitrate)
        bitrate = bitrateDecoded
        let bitstreamModeDecoded = try containerValues.decodeIfPresent(Eac3BitstreamMode.self, forKey: .bitstreamMode)
        bitstreamMode = bitstreamModeDecoded
        let codingModeDecoded = try containerValues.decodeIfPresent(Eac3CodingMode.self, forKey: .codingMode)
        codingMode = codingModeDecoded
        let dcFilterDecoded = try containerValues.decodeIfPresent(Eac3DcFilter.self, forKey: .dcFilter)
        dcFilter = dcFilterDecoded
        let dialnormDecoded = try containerValues.decode(Int.self, forKey: .dialnorm)
        dialnorm = dialnormDecoded
        let dynamicRangeCompressionLineDecoded = try containerValues.decodeIfPresent(Eac3DynamicRangeCompressionLine.self, forKey: .dynamicRangeCompressionLine)
        dynamicRangeCompressionLine = dynamicRangeCompressionLineDecoded
        let dynamicRangeCompressionRfDecoded = try containerValues.decodeIfPresent(Eac3DynamicRangeCompressionRf.self, forKey: .dynamicRangeCompressionRf)
        dynamicRangeCompressionRf = dynamicRangeCompressionRfDecoded
        let lfeControlDecoded = try containerValues.decodeIfPresent(Eac3LfeControl.self, forKey: .lfeControl)
        lfeControl = lfeControlDecoded
        let lfeFilterDecoded = try containerValues.decodeIfPresent(Eac3LfeFilter.self, forKey: .lfeFilter)
        lfeFilter = lfeFilterDecoded
        let loRoCenterMixLevelDecoded = try containerValues.decode(Double.self, forKey: .loRoCenterMixLevel)
        loRoCenterMixLevel = loRoCenterMixLevelDecoded
        let loRoSurroundMixLevelDecoded = try containerValues.decode(Double.self, forKey: .loRoSurroundMixLevel)
        loRoSurroundMixLevel = loRoSurroundMixLevelDecoded
        let ltRtCenterMixLevelDecoded = try containerValues.decode(Double.self, forKey: .ltRtCenterMixLevel)
        ltRtCenterMixLevel = ltRtCenterMixLevelDecoded
        let ltRtSurroundMixLevelDecoded = try containerValues.decode(Double.self, forKey: .ltRtSurroundMixLevel)
        ltRtSurroundMixLevel = ltRtSurroundMixLevelDecoded
        let metadataControlDecoded = try containerValues.decodeIfPresent(Eac3MetadataControl.self, forKey: .metadataControl)
        metadataControl = metadataControlDecoded
        let passthroughControlDecoded = try containerValues.decodeIfPresent(Eac3PassthroughControl.self, forKey: .passthroughControl)
        passthroughControl = passthroughControlDecoded
        let phaseControlDecoded = try containerValues.decodeIfPresent(Eac3PhaseControl.self, forKey: .phaseControl)
        phaseControl = phaseControlDecoded
        let sampleRateDecoded = try containerValues.decode(Int.self, forKey: .sampleRate)
        sampleRate = sampleRateDecoded
        let stereoDownmixDecoded = try containerValues.decodeIfPresent(Eac3StereoDownmix.self, forKey: .stereoDownmix)
        stereoDownmix = stereoDownmixDecoded
        let surroundExModeDecoded = try containerValues.decodeIfPresent(Eac3SurroundExMode.self, forKey: .surroundExMode)
        surroundExMode = surroundExModeDecoded
        let surroundModeDecoded = try containerValues.decodeIfPresent(Eac3SurroundMode.self, forKey: .surroundMode)
        surroundMode = surroundModeDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Vc3Settings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case framerateControl = "framerateControl"
        case framerateConversionAlgorithm = "framerateConversionAlgorithm"
        case framerateDenominator = "framerateDenominator"
        case framerateNumerator = "framerateNumerator"
        case interlaceMode = "interlaceMode"
        case scanTypeConversionMode = "scanTypeConversionMode"
        case slowPal = "slowPal"
        case telecine = "telecine"
        case vc3Class = "vc3Class"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let framerateControl = framerateControl {
            try encodeContainer.encode(framerateControl.rawValue, forKey: .framerateControl)
        }
        if let framerateConversionAlgorithm = framerateConversionAlgorithm {
            try encodeContainer.encode(framerateConversionAlgorithm.rawValue, forKey: .framerateConversionAlgorithm)
        }
        if framerateDenominator != 0 {
            try encodeContainer.encode(framerateDenominator, forKey: .framerateDenominator)
        }
        if framerateNumerator != 0 {
            try encodeContainer.encode(framerateNumerator, forKey: .framerateNumerator)
        }
        if let interlaceMode = interlaceMode {
            try encodeContainer.encode(interlaceMode.rawValue, forKey: .interlaceMode)
        }
        if let scanTypeConversionMode = scanTypeConversionMode {
            try encodeContainer.encode(scanTypeConversionMode.rawValue, forKey: .scanTypeConversionMode)
        }
        if let slowPal = slowPal {
            try encodeContainer.encode(slowPal.rawValue, forKey: .slowPal)
        }
        if let telecine = telecine {
            try encodeContainer.encode(telecine.rawValue, forKey: .telecine)
        }
        if let vc3Class = vc3Class {
            try encodeContainer.encode(vc3Class.rawValue, forKey: .vc3Class)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let framerateControlDecoded = try containerValues.decodeIfPresent(Vc3FramerateControl.self, forKey: .framerateControl)
        framerateControl = framerateControlDecoded
        let framerateConversionAlgorithmDecoded = try containerValues.decodeIfPresent(Vc3FramerateConversionAlgorithm.self, forKey: .framerateConversionAlgorithm)
        framerateConversionAlgorithm = framerateConversionAlgorithmDecoded
        let framerateDenominatorDecoded = try containerValues.decode(Int.self, forKey: .framerateDenominator)
        framerateDenominator = framerateDenominatorDecoded
        let framerateNumeratorDecoded = try containerValues.decode(Int.self, forKey: .framerateNumerator)
        framerateNumerator = framerateNumeratorDecoded
        let interlaceModeDecoded = try containerValues.decodeIfPresent(Vc3InterlaceMode.self, forKey: .interlaceMode)
        interlaceMode = interlaceModeDecoded
        let scanTypeConversionModeDecoded = try containerValues.decodeIfPresent(Vc3ScanTypeConversionMode.self, forKey: .scanTypeConversionMode)
        scanTypeConversionMode = scanTypeConversionModeDecoded
        let slowPalDecoded = try containerValues.decodeIfPresent(Vc3SlowPal.self, forKey: .slowPal)
        slowPal = slowPalDecoded
        let telecineDecoded = try containerValues.decodeIfPresent(Vc3Telecine.self, forKey: .telecine)
        telecine = telecineDecoded
        let vc3ClassDecoded = try containerValues.decodeIfPresent(Vc3Class.self, forKey: .vc3Class)
        vc3Class = vc3ClassDecoded
    }
}
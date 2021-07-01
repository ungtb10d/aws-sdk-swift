// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InputLossBehavior: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case blackFrameMsec = "blackFrameMsec"
        case inputLossImageColor = "inputLossImageColor"
        case inputLossImageSlate = "inputLossImageSlate"
        case inputLossImageType = "inputLossImageType"
        case repeatFrameMsec = "repeatFrameMsec"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if blackFrameMsec != 0 {
            try encodeContainer.encode(blackFrameMsec, forKey: .blackFrameMsec)
        }
        if let inputLossImageColor = inputLossImageColor {
            try encodeContainer.encode(inputLossImageColor, forKey: .inputLossImageColor)
        }
        if let inputLossImageSlate = inputLossImageSlate {
            try encodeContainer.encode(inputLossImageSlate, forKey: .inputLossImageSlate)
        }
        if let inputLossImageType = inputLossImageType {
            try encodeContainer.encode(inputLossImageType.rawValue, forKey: .inputLossImageType)
        }
        if repeatFrameMsec != 0 {
            try encodeContainer.encode(repeatFrameMsec, forKey: .repeatFrameMsec)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let blackFrameMsecDecoded = try containerValues.decode(Int.self, forKey: .blackFrameMsec)
        blackFrameMsec = blackFrameMsecDecoded
        let inputLossImageColorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .inputLossImageColor)
        inputLossImageColor = inputLossImageColorDecoded
        let inputLossImageSlateDecoded = try containerValues.decodeIfPresent(InputLocation.self, forKey: .inputLossImageSlate)
        inputLossImageSlate = inputLossImageSlateDecoded
        let inputLossImageTypeDecoded = try containerValues.decodeIfPresent(InputLossImageType.self, forKey: .inputLossImageType)
        inputLossImageType = inputLossImageTypeDecoded
        let repeatFrameMsecDecoded = try containerValues.decode(Int.self, forKey: .repeatFrameMsec)
        repeatFrameMsec = repeatFrameMsecDecoded
    }
}
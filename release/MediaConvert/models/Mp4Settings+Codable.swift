// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Mp4Settings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case audioDuration = "audioDuration"
        case cslgAtom = "cslgAtom"
        case cttsVersion = "cttsVersion"
        case freeSpaceBox = "freeSpaceBox"
        case moovPlacement = "moovPlacement"
        case mp4MajorBrand = "mp4MajorBrand"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let audioDuration = audioDuration {
            try encodeContainer.encode(audioDuration.rawValue, forKey: .audioDuration)
        }
        if let cslgAtom = cslgAtom {
            try encodeContainer.encode(cslgAtom.rawValue, forKey: .cslgAtom)
        }
        if cttsVersion != 0 {
            try encodeContainer.encode(cttsVersion, forKey: .cttsVersion)
        }
        if let freeSpaceBox = freeSpaceBox {
            try encodeContainer.encode(freeSpaceBox.rawValue, forKey: .freeSpaceBox)
        }
        if let moovPlacement = moovPlacement {
            try encodeContainer.encode(moovPlacement.rawValue, forKey: .moovPlacement)
        }
        if let mp4MajorBrand = mp4MajorBrand {
            try encodeContainer.encode(mp4MajorBrand, forKey: .mp4MajorBrand)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let audioDurationDecoded = try containerValues.decodeIfPresent(CmfcAudioDuration.self, forKey: .audioDuration)
        audioDuration = audioDurationDecoded
        let cslgAtomDecoded = try containerValues.decodeIfPresent(Mp4CslgAtom.self, forKey: .cslgAtom)
        cslgAtom = cslgAtomDecoded
        let cttsVersionDecoded = try containerValues.decode(Int.self, forKey: .cttsVersion)
        cttsVersion = cttsVersionDecoded
        let freeSpaceBoxDecoded = try containerValues.decodeIfPresent(Mp4FreeSpaceBox.self, forKey: .freeSpaceBox)
        freeSpaceBox = freeSpaceBoxDecoded
        let moovPlacementDecoded = try containerValues.decodeIfPresent(Mp4MoovPlacement.self, forKey: .moovPlacement)
        moovPlacement = moovPlacementDecoded
        let mp4MajorBrandDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mp4MajorBrand)
        mp4MajorBrand = mp4MajorBrandDecoded
    }
}
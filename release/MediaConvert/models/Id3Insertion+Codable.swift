// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Id3Insertion: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id3 = "id3"
        case timecode = "timecode"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id3 = id3 {
            try encodeContainer.encode(id3, forKey: .id3)
        }
        if let timecode = timecode {
            try encodeContainer.encode(timecode, forKey: .timecode)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let id3Decoded = try containerValues.decodeIfPresent(String.self, forKey: .id3)
        id3 = id3Decoded
        let timecodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .timecode)
        timecode = timecodeDecoded
    }
}
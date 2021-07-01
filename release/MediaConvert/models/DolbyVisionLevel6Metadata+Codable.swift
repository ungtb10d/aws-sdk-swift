// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DolbyVisionLevel6Metadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxCll = "maxCll"
        case maxFall = "maxFall"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxCll != 0 {
            try encodeContainer.encode(maxCll, forKey: .maxCll)
        }
        if maxFall != 0 {
            try encodeContainer.encode(maxFall, forKey: .maxFall)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maxCllDecoded = try containerValues.decode(Int.self, forKey: .maxCll)
        maxCll = maxCllDecoded
        let maxFallDecoded = try containerValues.decode(Int.self, forKey: .maxFall)
        maxFall = maxFallDecoded
    }
}
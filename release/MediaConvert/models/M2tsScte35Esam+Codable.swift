// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension M2tsScte35Esam: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case scte35EsamPid = "scte35EsamPid"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if scte35EsamPid != 0 {
            try encodeContainer.encode(scte35EsamPid, forKey: .scte35EsamPid)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let scte35EsamPidDecoded = try containerValues.decode(Int.self, forKey: .scte35EsamPid)
        scte35EsamPid = scte35EsamPidDecoded
    }
}
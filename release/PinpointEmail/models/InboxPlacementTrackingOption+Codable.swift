// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InboxPlacementTrackingOption: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case global = "Global"
        case trackedIsps = "TrackedIsps"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if global != false {
            try encodeContainer.encode(global, forKey: .global)
        }
        if let trackedIsps = trackedIsps {
            var trackedIspsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .trackedIsps)
            for ispnamelist0 in trackedIsps {
                try trackedIspsContainer.encode(ispnamelist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let globalDecoded = try containerValues.decode(Bool.self, forKey: .global)
        global = globalDecoded
        let trackedIspsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .trackedIsps)
        var trackedIspsDecoded0:[String]? = nil
        if let trackedIspsContainer = trackedIspsContainer {
            trackedIspsDecoded0 = [String]()
            for string0 in trackedIspsContainer {
                if let string0 = string0 {
                    trackedIspsDecoded0?.append(string0)
                }
            }
        }
        trackedIsps = trackedIspsDecoded0
    }
}
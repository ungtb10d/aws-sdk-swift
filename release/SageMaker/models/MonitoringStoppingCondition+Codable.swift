// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MonitoringStoppingCondition: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxRuntimeInSeconds = "MaxRuntimeInSeconds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxRuntimeInSeconds != 0 {
            try encodeContainer.encode(maxRuntimeInSeconds, forKey: .maxRuntimeInSeconds)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maxRuntimeInSecondsDecoded = try containerValues.decode(Int.self, forKey: .maxRuntimeInSeconds)
        maxRuntimeInSeconds = maxRuntimeInSecondsDecoded
    }
}
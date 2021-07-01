// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataPreProcessingConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case targetSamplingRate = "TargetSamplingRate"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let targetSamplingRate = targetSamplingRate {
            try encodeContainer.encode(targetSamplingRate.rawValue, forKey: .targetSamplingRate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let targetSamplingRateDecoded = try containerValues.decodeIfPresent(TargetSamplingRate.self, forKey: .targetSamplingRate)
        targetSamplingRate = targetSamplingRateDecoded
    }
}
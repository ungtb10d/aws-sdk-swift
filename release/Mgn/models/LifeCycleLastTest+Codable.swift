// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LifeCycleLastTest: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case finalized
        case initiated
        case reverted
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let finalized = finalized {
            try encodeContainer.encode(finalized, forKey: .finalized)
        }
        if let initiated = initiated {
            try encodeContainer.encode(initiated, forKey: .initiated)
        }
        if let reverted = reverted {
            try encodeContainer.encode(reverted, forKey: .reverted)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let initiatedDecoded = try containerValues.decodeIfPresent(LifeCycleLastTestInitiated.self, forKey: .initiated)
        initiated = initiatedDecoded
        let revertedDecoded = try containerValues.decodeIfPresent(LifeCycleLastTestReverted.self, forKey: .reverted)
        reverted = revertedDecoded
        let finalizedDecoded = try containerValues.decodeIfPresent(LifeCycleLastTestFinalized.self, forKey: .finalized)
        finalized = finalizedDecoded
    }
}
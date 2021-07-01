// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EffectivePatch: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case patch = "Patch"
        case patchStatus = "PatchStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let patch = patch {
            try encodeContainer.encode(patch, forKey: .patch)
        }
        if let patchStatus = patchStatus {
            try encodeContainer.encode(patchStatus, forKey: .patchStatus)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let patchDecoded = try containerValues.decodeIfPresent(Patch.self, forKey: .patch)
        patch = patchDecoded
        let patchStatusDecoded = try containerValues.decodeIfPresent(PatchStatus.self, forKey: .patchStatus)
        patchStatus = patchStatusDecoded
    }
}
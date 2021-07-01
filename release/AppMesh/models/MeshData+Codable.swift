// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MeshData: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case meshName
        case metadata
        case spec
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let meshName = meshName {
            try encodeContainer.encode(meshName, forKey: .meshName)
        }
        if let metadata = metadata {
            try encodeContainer.encode(metadata, forKey: .metadata)
        }
        if let spec = spec {
            try encodeContainer.encode(spec, forKey: .spec)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let meshNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .meshName)
        meshName = meshNameDecoded
        let specDecoded = try containerValues.decodeIfPresent(MeshSpec.self, forKey: .spec)
        spec = specDecoded
        let metadataDecoded = try containerValues.decodeIfPresent(ResourceMetadata.self, forKey: .metadata)
        metadata = metadataDecoded
        let statusDecoded = try containerValues.decodeIfPresent(MeshStatus.self, forKey: .status)
        status = statusDecoded
    }
}
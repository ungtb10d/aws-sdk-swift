// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VirtualRouterServiceProvider: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case virtualRouterName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let virtualRouterName = virtualRouterName {
            try encodeContainer.encode(virtualRouterName, forKey: .virtualRouterName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let virtualRouterNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .virtualRouterName)
        virtualRouterName = virtualRouterNameDecoded
    }
}
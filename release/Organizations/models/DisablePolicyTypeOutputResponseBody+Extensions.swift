// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DisablePolicyTypeOutputResponseBody: Equatable {
    public let root: Root?
}

extension DisablePolicyTypeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case root = "Root"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let rootDecoded = try containerValues.decodeIfPresent(Root.self, forKey: .root)
        root = rootDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImageLocation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id
        case url
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let url = url {
            try encodeContainer.encode(url, forKey: .url)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let urlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .url)
        url = urlDecoded
    }
}
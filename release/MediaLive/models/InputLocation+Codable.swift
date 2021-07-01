// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InputLocation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case passwordParam = "passwordParam"
        case uri = "uri"
        case username = "username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let passwordParam = passwordParam {
            try encodeContainer.encode(passwordParam, forKey: .passwordParam)
        }
        if let uri = uri {
            try encodeContainer.encode(uri, forKey: .uri)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let passwordParamDecoded = try containerValues.decodeIfPresent(String.self, forKey: .passwordParam)
        passwordParam = passwordParamDecoded
        let uriDecoded = try containerValues.decodeIfPresent(String.self, forKey: .uri)
        uri = uriDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
    }
}
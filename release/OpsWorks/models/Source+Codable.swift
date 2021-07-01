// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Source: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case password = "Password"
        case revision = "Revision"
        case sshKey = "SshKey"
        case type = "Type"
        case url = "Url"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let password = password {
            try encodeContainer.encode(password, forKey: .password)
        }
        if let revision = revision {
            try encodeContainer.encode(revision, forKey: .revision)
        }
        if let sshKey = sshKey {
            try encodeContainer.encode(sshKey, forKey: .sshKey)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
        if let url = url {
            try encodeContainer.encode(url, forKey: .url)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(SourceType.self, forKey: .type)
        type = typeDecoded
        let urlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .url)
        url = urlDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let passwordDecoded = try containerValues.decodeIfPresent(String.self, forKey: .password)
        password = passwordDecoded
        let sshKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sshKey)
        sshKey = sshKeyDecoded
        let revisionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revision)
        revision = revisionDecoded
    }
}
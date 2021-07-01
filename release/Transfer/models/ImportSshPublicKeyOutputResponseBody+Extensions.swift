// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ImportSshPublicKeyOutputResponseBody: Equatable {
    public let serverId: String?
    public let sshPublicKeyId: String?
    public let userName: String?
}

extension ImportSshPublicKeyOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case serverId = "ServerId"
        case sshPublicKeyId = "SshPublicKeyId"
        case userName = "UserName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serverIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverId)
        serverId = serverIdDecoded
        let sshPublicKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sshPublicKeyId)
        sshPublicKeyId = sshPublicKeyIdDecoded
        let userNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userName)
        userName = userNameDecoded
    }
}
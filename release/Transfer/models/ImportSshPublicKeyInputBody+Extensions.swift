// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ImportSshPublicKeyInputBody: Equatable {
    public let serverId: String?
    public let sshPublicKeyBody: String?
    public let userName: String?
}

extension ImportSshPublicKeyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case serverId = "ServerId"
        case sshPublicKeyBody = "SshPublicKeyBody"
        case userName = "UserName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serverIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverId)
        serverId = serverIdDecoded
        let sshPublicKeyBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sshPublicKeyBody)
        sshPublicKeyBody = sshPublicKeyBodyDecoded
        let userNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userName)
        userName = userNameDecoded
    }
}
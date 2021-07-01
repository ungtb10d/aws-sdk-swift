// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MongoDbSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authMechanism = "AuthMechanism"
        case authSource = "AuthSource"
        case authType = "AuthType"
        case databaseName = "DatabaseName"
        case docsToInvestigate = "DocsToInvestigate"
        case extractDocId = "ExtractDocId"
        case kmsKeyId = "KmsKeyId"
        case nestingLevel = "NestingLevel"
        case password = "Password"
        case port = "Port"
        case secretsManagerAccessRoleArn = "SecretsManagerAccessRoleArn"
        case secretsManagerSecretId = "SecretsManagerSecretId"
        case serverName = "ServerName"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authMechanism = authMechanism {
            try encodeContainer.encode(authMechanism.rawValue, forKey: .authMechanism)
        }
        if let authSource = authSource {
            try encodeContainer.encode(authSource, forKey: .authSource)
        }
        if let authType = authType {
            try encodeContainer.encode(authType.rawValue, forKey: .authType)
        }
        if let databaseName = databaseName {
            try encodeContainer.encode(databaseName, forKey: .databaseName)
        }
        if let docsToInvestigate = docsToInvestigate {
            try encodeContainer.encode(docsToInvestigate, forKey: .docsToInvestigate)
        }
        if let extractDocId = extractDocId {
            try encodeContainer.encode(extractDocId, forKey: .extractDocId)
        }
        if let kmsKeyId = kmsKeyId {
            try encodeContainer.encode(kmsKeyId, forKey: .kmsKeyId)
        }
        if let nestingLevel = nestingLevel {
            try encodeContainer.encode(nestingLevel.rawValue, forKey: .nestingLevel)
        }
        if let password = password {
            try encodeContainer.encode(password, forKey: .password)
        }
        if let port = port {
            try encodeContainer.encode(port, forKey: .port)
        }
        if let secretsManagerAccessRoleArn = secretsManagerAccessRoleArn {
            try encodeContainer.encode(secretsManagerAccessRoleArn, forKey: .secretsManagerAccessRoleArn)
        }
        if let secretsManagerSecretId = secretsManagerSecretId {
            try encodeContainer.encode(secretsManagerSecretId, forKey: .secretsManagerSecretId)
        }
        if let serverName = serverName {
            try encodeContainer.encode(serverName, forKey: .serverName)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let passwordDecoded = try containerValues.decodeIfPresent(String.self, forKey: .password)
        password = passwordDecoded
        let serverNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverName)
        serverName = serverNameDecoded
        let portDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .port)
        port = portDecoded
        let databaseNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .databaseName)
        databaseName = databaseNameDecoded
        let authTypeDecoded = try containerValues.decodeIfPresent(AuthTypeValue.self, forKey: .authType)
        authType = authTypeDecoded
        let authMechanismDecoded = try containerValues.decodeIfPresent(AuthMechanismValue.self, forKey: .authMechanism)
        authMechanism = authMechanismDecoded
        let nestingLevelDecoded = try containerValues.decodeIfPresent(NestingLevelValue.self, forKey: .nestingLevel)
        nestingLevel = nestingLevelDecoded
        let extractDocIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .extractDocId)
        extractDocId = extractDocIdDecoded
        let docsToInvestigateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .docsToInvestigate)
        docsToInvestigate = docsToInvestigateDecoded
        let authSourceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authSource)
        authSource = authSourceDecoded
        let kmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyId)
        kmsKeyId = kmsKeyIdDecoded
        let secretsManagerAccessRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretsManagerAccessRoleArn)
        secretsManagerAccessRoleArn = secretsManagerAccessRoleArnDecoded
        let secretsManagerSecretIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretsManagerSecretId)
        secretsManagerSecretId = secretsManagerSecretIdDecoded
    }
}
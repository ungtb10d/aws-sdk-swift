// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ClientVpnAuthenticationRequest: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case activeDirectory = "ActiveDirectory"
        case federatedAuthentication = "FederatedAuthentication"
        case mutualAuthentication = "MutualAuthentication"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let activeDirectory = activeDirectory {
            try container.encode(activeDirectory, forKey: Key("ActiveDirectory"))
        }
        if let federatedAuthentication = federatedAuthentication {
            try container.encode(federatedAuthentication, forKey: Key("FederatedAuthentication"))
        }
        if let mutualAuthentication = mutualAuthentication {
            try container.encode(mutualAuthentication, forKey: Key("MutualAuthentication"))
        }
        if let type = type {
            try container.encode(type, forKey: Key("Type"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(ClientVpnAuthenticationType.self, forKey: .type)
        type = typeDecoded
        let activeDirectoryDecoded = try containerValues.decodeIfPresent(DirectoryServiceAuthenticationRequest.self, forKey: .activeDirectory)
        activeDirectory = activeDirectoryDecoded
        let mutualAuthenticationDecoded = try containerValues.decodeIfPresent(CertificateAuthenticationRequest.self, forKey: .mutualAuthentication)
        mutualAuthentication = mutualAuthenticationDecoded
        let federatedAuthenticationDecoded = try containerValues.decodeIfPresent(FederatedAuthenticationRequest.self, forKey: .federatedAuthentication)
        federatedAuthentication = federatedAuthenticationDecoded
    }
}
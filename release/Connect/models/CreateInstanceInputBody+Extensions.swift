// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateInstanceInputBody: Equatable {
    public let clientToken: String?
    public let identityManagementType: DirectoryType?
    public let instanceAlias: String?
    public let directoryId: String?
    public let inboundCallsEnabled: Bool?
    public let outboundCallsEnabled: Bool?
}

extension CreateInstanceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case directoryId = "DirectoryId"
        case identityManagementType = "IdentityManagementType"
        case inboundCallsEnabled = "InboundCallsEnabled"
        case instanceAlias = "InstanceAlias"
        case outboundCallsEnabled = "OutboundCallsEnabled"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let identityManagementTypeDecoded = try containerValues.decodeIfPresent(DirectoryType.self, forKey: .identityManagementType)
        identityManagementType = identityManagementTypeDecoded
        let instanceAliasDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceAlias)
        instanceAlias = instanceAliasDecoded
        let directoryIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .directoryId)
        directoryId = directoryIdDecoded
        let inboundCallsEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .inboundCallsEnabled)
        inboundCallsEnabled = inboundCallsEnabledDecoded
        let outboundCallsEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .outboundCallsEnabled)
        outboundCallsEnabled = outboundCallsEnabledDecoded
    }
}
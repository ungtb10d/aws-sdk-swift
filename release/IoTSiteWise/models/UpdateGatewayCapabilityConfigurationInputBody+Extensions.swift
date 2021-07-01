// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateGatewayCapabilityConfigurationInputBody: Equatable {
    public let capabilityNamespace: String?
    public let capabilityConfiguration: String?
}

extension UpdateGatewayCapabilityConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case capabilityConfiguration
        case capabilityNamespace
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let capabilityNamespaceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .capabilityNamespace)
        capabilityNamespace = capabilityNamespaceDecoded
        let capabilityConfigurationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .capabilityConfiguration)
        capabilityConfiguration = capabilityConfigurationDecoded
    }
}
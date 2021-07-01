// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeploymentPolicies: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case componentUpdatePolicy
        case configurationValidationPolicy
        case failureHandlingPolicy
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let componentUpdatePolicy = componentUpdatePolicy {
            try encodeContainer.encode(componentUpdatePolicy, forKey: .componentUpdatePolicy)
        }
        if let configurationValidationPolicy = configurationValidationPolicy {
            try encodeContainer.encode(configurationValidationPolicy, forKey: .configurationValidationPolicy)
        }
        if let failureHandlingPolicy = failureHandlingPolicy {
            try encodeContainer.encode(failureHandlingPolicy.rawValue, forKey: .failureHandlingPolicy)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let failureHandlingPolicyDecoded = try containerValues.decodeIfPresent(DeploymentFailureHandlingPolicy.self, forKey: .failureHandlingPolicy)
        failureHandlingPolicy = failureHandlingPolicyDecoded
        let componentUpdatePolicyDecoded = try containerValues.decodeIfPresent(DeploymentComponentUpdatePolicy.self, forKey: .componentUpdatePolicy)
        componentUpdatePolicy = componentUpdatePolicyDecoded
        let configurationValidationPolicyDecoded = try containerValues.decodeIfPresent(DeploymentConfigurationValidationPolicy.self, forKey: .configurationValidationPolicy)
        configurationValidationPolicy = configurationValidationPolicyDecoded
    }
}
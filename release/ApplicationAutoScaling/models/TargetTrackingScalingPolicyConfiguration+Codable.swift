// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TargetTrackingScalingPolicyConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case customizedMetricSpecification = "CustomizedMetricSpecification"
        case disableScaleIn = "DisableScaleIn"
        case predefinedMetricSpecification = "PredefinedMetricSpecification"
        case scaleInCooldown = "ScaleInCooldown"
        case scaleOutCooldown = "ScaleOutCooldown"
        case targetValue = "TargetValue"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let customizedMetricSpecification = customizedMetricSpecification {
            try encodeContainer.encode(customizedMetricSpecification, forKey: .customizedMetricSpecification)
        }
        if let disableScaleIn = disableScaleIn {
            try encodeContainer.encode(disableScaleIn, forKey: .disableScaleIn)
        }
        if let predefinedMetricSpecification = predefinedMetricSpecification {
            try encodeContainer.encode(predefinedMetricSpecification, forKey: .predefinedMetricSpecification)
        }
        if let scaleInCooldown = scaleInCooldown {
            try encodeContainer.encode(scaleInCooldown, forKey: .scaleInCooldown)
        }
        if let scaleOutCooldown = scaleOutCooldown {
            try encodeContainer.encode(scaleOutCooldown, forKey: .scaleOutCooldown)
        }
        if let targetValue = targetValue {
            try encodeContainer.encode(targetValue, forKey: .targetValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let targetValueDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .targetValue)
        targetValue = targetValueDecoded
        let predefinedMetricSpecificationDecoded = try containerValues.decodeIfPresent(PredefinedMetricSpecification.self, forKey: .predefinedMetricSpecification)
        predefinedMetricSpecification = predefinedMetricSpecificationDecoded
        let customizedMetricSpecificationDecoded = try containerValues.decodeIfPresent(CustomizedMetricSpecification.self, forKey: .customizedMetricSpecification)
        customizedMetricSpecification = customizedMetricSpecificationDecoded
        let scaleOutCooldownDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .scaleOutCooldown)
        scaleOutCooldown = scaleOutCooldownDecoded
        let scaleInCooldownDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .scaleInCooldown)
        scaleInCooldown = scaleInCooldownDecoded
        let disableScaleInDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .disableScaleIn)
        disableScaleIn = disableScaleInDecoded
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PredictiveScalingMetricSpecification: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case predefinedLoadMetricSpecification = "PredefinedLoadMetricSpecification"
        case predefinedMetricPairSpecification = "PredefinedMetricPairSpecification"
        case predefinedScalingMetricSpecification = "PredefinedScalingMetricSpecification"
        case targetValue = "TargetValue"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let predefinedLoadMetricSpecification = predefinedLoadMetricSpecification {
            try container.encode(predefinedLoadMetricSpecification, forKey: Key("PredefinedLoadMetricSpecification"))
        }
        if let predefinedMetricPairSpecification = predefinedMetricPairSpecification {
            try container.encode(predefinedMetricPairSpecification, forKey: Key("PredefinedMetricPairSpecification"))
        }
        if let predefinedScalingMetricSpecification = predefinedScalingMetricSpecification {
            try container.encode(predefinedScalingMetricSpecification, forKey: Key("PredefinedScalingMetricSpecification"))
        }
        if let targetValue = targetValue {
            try container.encode(targetValue, forKey: Key("TargetValue"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let targetValueDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .targetValue)
        targetValue = targetValueDecoded
        let predefinedMetricPairSpecificationDecoded = try containerValues.decodeIfPresent(PredictiveScalingPredefinedMetricPair.self, forKey: .predefinedMetricPairSpecification)
        predefinedMetricPairSpecification = predefinedMetricPairSpecificationDecoded
        let predefinedScalingMetricSpecificationDecoded = try containerValues.decodeIfPresent(PredictiveScalingPredefinedScalingMetric.self, forKey: .predefinedScalingMetricSpecification)
        predefinedScalingMetricSpecification = predefinedScalingMetricSpecificationDecoded
        let predefinedLoadMetricSpecificationDecoded = try containerValues.decodeIfPresent(PredictiveScalingPredefinedLoadMetric.self, forKey: .predefinedLoadMetricSpecification)
        predefinedLoadMetricSpecification = predefinedLoadMetricSpecificationDecoded
    }
}
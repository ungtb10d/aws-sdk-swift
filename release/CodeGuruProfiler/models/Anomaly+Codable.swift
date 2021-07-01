// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Anomaly: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instances
        case metric
        case reason
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instances = instances {
            var instancesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .instances)
            for anomalyinstances0 in instances {
                try instancesContainer.encode(anomalyinstances0)
            }
        }
        if let metric = metric {
            try encodeContainer.encode(metric, forKey: .metric)
        }
        if let reason = reason {
            try encodeContainer.encode(reason, forKey: .reason)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let metricDecoded = try containerValues.decodeIfPresent(Metric.self, forKey: .metric)
        metric = metricDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reason)
        reason = reasonDecoded
        let instancesContainer = try containerValues.decodeIfPresent([AnomalyInstance?].self, forKey: .instances)
        var instancesDecoded0:[AnomalyInstance]? = nil
        if let instancesContainer = instancesContainer {
            instancesDecoded0 = [AnomalyInstance]()
            for structure0 in instancesContainer {
                if let structure0 = structure0 {
                    instancesDecoded0?.append(structure0)
                }
            }
        }
        instances = instancesDecoded0
    }
}
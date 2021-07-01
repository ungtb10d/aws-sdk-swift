// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TrainingMetrics: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case auc
        case metricDataPoints
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let auc = auc {
            try encodeContainer.encode(auc, forKey: .auc)
        }
        if let metricDataPoints = metricDataPoints {
            var metricDataPointsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .metricDataPoints)
            for metricdatapointslist0 in metricDataPoints {
                try metricDataPointsContainer.encode(metricdatapointslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aucDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .auc)
        auc = aucDecoded
        let metricDataPointsContainer = try containerValues.decodeIfPresent([MetricDataPoint?].self, forKey: .metricDataPoints)
        var metricDataPointsDecoded0:[MetricDataPoint]? = nil
        if let metricDataPointsContainer = metricDataPointsContainer {
            metricDataPointsDecoded0 = [MetricDataPoint]()
            for structure0 in metricDataPointsContainer {
                if let structure0 = structure0 {
                    metricDataPointsDecoded0?.append(structure0)
                }
            }
        }
        metricDataPoints = metricDataPointsDecoded0
    }
}
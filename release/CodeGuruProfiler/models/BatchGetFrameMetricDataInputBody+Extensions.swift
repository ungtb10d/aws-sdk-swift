// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetFrameMetricDataInputBody: Equatable {
    public let frameMetrics: [FrameMetric]?
}

extension BatchGetFrameMetricDataInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case frameMetrics
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let frameMetricsContainer = try containerValues.decodeIfPresent([FrameMetric?].self, forKey: .frameMetrics)
        var frameMetricsDecoded0:[FrameMetric]? = nil
        if let frameMetricsContainer = frameMetricsContainer {
            frameMetricsDecoded0 = [FrameMetric]()
            for structure0 in frameMetricsContainer {
                if let structure0 = structure0 {
                    frameMetricsDecoded0?.append(structure0)
                }
            }
        }
        frameMetrics = frameMetricsDecoded0
    }
}
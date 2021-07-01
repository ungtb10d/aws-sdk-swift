// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDistributionMetricDataOutputResponseBody: Equatable {
    public let metricName: DistributionMetricName?
    public let metricData: [MetricDatapoint]?
}

extension GetDistributionMetricDataOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case metricData
        case metricName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let metricNameDecoded = try containerValues.decodeIfPresent(DistributionMetricName.self, forKey: .metricName)
        metricName = metricNameDecoded
        let metricDataContainer = try containerValues.decodeIfPresent([MetricDatapoint?].self, forKey: .metricData)
        var metricDataDecoded0:[MetricDatapoint]? = nil
        if let metricDataContainer = metricDataContainer {
            metricDataDecoded0 = [MetricDatapoint]()
            for structure0 in metricDataContainer {
                if let structure0 = structure0 {
                    metricDataDecoded0?.append(structure0)
                }
            }
        }
        metricData = metricDataDecoded0
    }
}
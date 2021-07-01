// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Group: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case keys = "Keys"
        case metrics = "Metrics"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let keys = keys {
            var keysContainer = encodeContainer.nestedUnkeyedContainer(forKey: .keys)
            for keys0 in keys {
                try keysContainer.encode(keys0)
            }
        }
        if let metrics = metrics {
            var metricsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .metrics)
            for (dictKey0, metrics0) in metrics {
                try metricsContainer.encode(metrics0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keysContainer = try containerValues.decodeIfPresent([String?].self, forKey: .keys)
        var keysDecoded0:[String]? = nil
        if let keysContainer = keysContainer {
            keysDecoded0 = [String]()
            for string0 in keysContainer {
                if let string0 = string0 {
                    keysDecoded0?.append(string0)
                }
            }
        }
        keys = keysDecoded0
        let metricsContainer = try containerValues.decodeIfPresent([String: MetricValue?].self, forKey: .metrics)
        var metricsDecoded0: [String:MetricValue]? = nil
        if let metricsContainer = metricsContainer {
            metricsDecoded0 = [String:MetricValue]()
            for (key0, metricvalue0) in metricsContainer {
                if let metricvalue0 = metricvalue0 {
                    metricsDecoded0?[key0] = metricvalue0
                }
            }
        }
        metrics = metricsDecoded0
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetMetricWidgetImageOutputResponseBody: Equatable {
    public let metricWidgetImage: Data?
}

extension GetMetricWidgetImageOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case metricWidgetImage = "MetricWidgetImage"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("GetMetricWidgetImageResult"))
        if containerValues.contains(.metricWidgetImage) {
            do {
                let metricWidgetImageDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .metricWidgetImage)
                metricWidgetImage = metricWidgetImageDecoded
            } catch {
                metricWidgetImage = "".data(using: .utf8)
            }
        } else {
            metricWidgetImage = nil
        }
    }
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Feedback for an anomalous metric.</p>
public struct AnomalyGroupTimeSeriesFeedback: Equatable {
    /// <p>The ID of the anomaly group.</p>
    public let anomalyGroupId: String?
    /// <p>Feedback on whether the metric is a legitimate anomaly.</p>
    public let isAnomaly: Bool?
    /// <p>The ID of the metric.</p>
    public let timeSeriesId: String?

    public init (
        anomalyGroupId: String? = nil,
        isAnomaly: Bool? = nil,
        timeSeriesId: String? = nil
    )
    {
        self.anomalyGroupId = anomalyGroupId
        self.isAnomaly = isAnomaly
        self.timeSeriesId = timeSeriesId
    }
}

extension AnomalyGroupTimeSeriesFeedback: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AnomalyGroupTimeSeriesFeedback(anomalyGroupId: \(String(describing: anomalyGroupId)), isAnomaly: \(String(describing: isAnomaly)), timeSeriesId: \(String(describing: timeSeriesId)))"}
}
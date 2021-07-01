// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The weighted loss value for a quantile. This object is part of the
///       <a>Metrics</a> object.</p>
public struct WeightedQuantileLoss: Equatable {
    /// <p>The difference between the predicted value and the actual value over the quantile,
    ///       weighted (normalized) by dividing by the sum over all quantiles.</p>
    public let lossValue: Double?
    /// <p>The quantile. Quantiles divide a probability distribution into regions of equal
    ///       probability. For example, if the distribution was divided into 5 regions of equal
    ///       probability, the quantiles would be 0.2, 0.4, 0.6, and 0.8.</p>
    public let quantile: Double?

    public init (
        lossValue: Double? = nil,
        quantile: Double? = nil
    )
    {
        self.lossValue = lossValue
        self.quantile = quantile
    }
}

extension WeightedQuantileLoss: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WeightedQuantileLoss(lossValue: \(String(describing: lossValue)), quantile: \(String(describing: quantile)))"}
}
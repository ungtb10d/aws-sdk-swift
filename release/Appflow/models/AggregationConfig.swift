// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
/// The aggregation settings that you can use to customize the output format of your flow data.
/// </p>
public struct AggregationConfig: Equatable {
    /// <p>
    ///  Specifies whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated.
    /// </p>
    public let aggregationType: AggregationType?

    public init (
        aggregationType: AggregationType? = nil
    )
    {
        self.aggregationType = aggregationType
    }
}

extension AggregationConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AggregationConfig(aggregationType: \(String(describing: aggregationType)))"}
}
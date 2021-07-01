// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetAssetPropertyAggregatesOutputResponse: Equatable {
    /// <p>The requested aggregated values.</p>
    public let aggregatedValues: [AggregatedValue]?
    /// <p>The token for the next set of results, or null if there are no additional results.</p>
    public let nextToken: String?

    public init (
        aggregatedValues: [AggregatedValue]? = nil,
        nextToken: String? = nil
    )
    {
        self.aggregatedValues = aggregatedValues
        self.nextToken = nextToken
    }
}

extension GetAssetPropertyAggregatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAssetPropertyAggregatesOutputResponse(aggregatedValues: \(String(describing: aggregatedValues)), nextToken: \(String(describing: nextToken)))"}
}
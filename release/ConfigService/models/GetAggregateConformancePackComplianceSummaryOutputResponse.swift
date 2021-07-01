// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetAggregateConformancePackComplianceSummaryOutputResponse: Equatable {
    /// <p>Returns a list of <code>AggregateConformancePackComplianceSummary</code> object.</p>
    public let aggregateConformancePackComplianceSummaries: [AggregateConformancePackComplianceSummary]?
    /// <p>Groups the result based on AWS Account ID or AWS Region.</p>
    public let groupByKey: String?
    /// <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    public let nextToken: String?

    public init (
        aggregateConformancePackComplianceSummaries: [AggregateConformancePackComplianceSummary]? = nil,
        groupByKey: String? = nil,
        nextToken: String? = nil
    )
    {
        self.aggregateConformancePackComplianceSummaries = aggregateConformancePackComplianceSummaries
        self.groupByKey = groupByKey
        self.nextToken = nextToken
    }
}

extension GetAggregateConformancePackComplianceSummaryOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAggregateConformancePackComplianceSummaryOutputResponse(aggregateConformancePackComplianceSummaries: \(String(describing: aggregateConformancePackComplianceSummaries)), groupByKey: \(String(describing: groupByKey)), nextToken: \(String(describing: nextToken)))"}
}
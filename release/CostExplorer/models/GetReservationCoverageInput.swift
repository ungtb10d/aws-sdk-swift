// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>You can use the following request parameters to query for how much of your instance usage a reservation covered.</p>
public struct GetReservationCoverageInput: Equatable {
    /// <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>AZ</p>
    ///             </li>
    ///             <li>
    ///                <p>CACHE_ENGINE</p>
    ///             </li>
    ///             <li>
    ///                <p>DATABASE_ENGINE</p>
    ///             </li>
    ///             <li>
    ///                <p>DEPLOYMENT_OPTION</p>
    ///             </li>
    ///             <li>
    ///                <p>INSTANCE_TYPE</p>
    ///             </li>
    ///             <li>
    ///                <p>LINKED_ACCOUNT</p>
    ///             </li>
    ///             <li>
    ///                <p>OPERATING_SYSTEM</p>
    ///             </li>
    ///             <li>
    ///                <p>PLATFORM</p>
    ///             </li>
    ///             <li>
    ///                <p>REGION</p>
    ///             </li>
    ///             <li>
    ///                <p>SERVICE</p>
    ///             </li>
    ///             <li>
    ///                <p>TAG</p>
    ///             </li>
    ///             <li>
    ///                <p>TENANCY</p>
    ///             </li>
    ///          </ul>
    /// 		       <p>
    ///             <code>GetReservationCoverage</code> uses the same
    /// 			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    /// 			as the other operations, but only <code>AND</code> is supported among each dimension. You can nest only one level deep.
    /// 			If there are multiple values for a dimension, they are OR'd together.</p>
    /// 		       <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to EC2.</p>
    /// 	        <p>Cost category is also supported.</p>
    public let filter: Expression?
    /// <p>The granularity of the AWS cost data for the reservation. Valid values are <code>MONTHLY</code> and <code>DAILY</code>.</p>
    /// 		       <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set,
    /// 			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
    /// 		       <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    public let granularity: Granularity?
    /// <p>You can group the data by the following attributes:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>AZ</p>
    ///             </li>
    ///             <li>
    ///                <p>CACHE_ENGINE</p>
    ///             </li>
    ///             <li>
    ///                <p>DATABASE_ENGINE</p>
    ///             </li>
    ///             <li>
    ///                <p>DEPLOYMENT_OPTION</p>
    ///             </li>
    ///             <li>
    ///                <p>INSTANCE_TYPE</p>
    ///             </li>
    ///             <li>
    ///                <p>LINKED_ACCOUNT</p>
    ///             </li>
    ///             <li>
    ///                <p>OPERATING_SYSTEM</p>
    ///             </li>
    ///             <li>
    ///                <p>PLATFORM</p>
    ///             </li>
    ///             <li>
    ///                <p>REGION</p>
    ///             </li>
    ///             <li>
    ///                <p>TENANCY</p>
    ///             </li>
    ///          </ul>
    public let groupBy: [GroupDefinition]?
    /// <p>The maximum number of objects that you returned for this request. If more objects are available, in the response, AWS provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.</p>
    public let maxResults: Int
    /// <p>The measurement that you want your reservation coverage reported in.</p>
    /// 		       <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use multiple values in a request.</p>
    public let metrics: [String]?
    /// <p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
    public let nextPageToken: String?
    /// <p>The value by which you want to sort the data.</p>
    /// 	        <p>The following values are supported for <code>Key</code>:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>OnDemandCost</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>CoverageHoursPercentage</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>OnDemandHours</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ReservedHours</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>TotalRunningHours</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>CoverageNormalizedUnitsPercentage</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>OnDemandNormalizedUnits</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ReservedNormalizedUnits</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>TotalRunningNormalizedUnits</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Time</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///
    ///          <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    public let sortBy: SortDefinition?
    /// <p>The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data
    /// 			for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    ///             retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    public let timePeriod: DateInterval?

    public init (
        filter: Expression? = nil,
        granularity: Granularity? = nil,
        groupBy: [GroupDefinition]? = nil,
        maxResults: Int = 0,
        metrics: [String]? = nil,
        nextPageToken: String? = nil,
        sortBy: SortDefinition? = nil,
        timePeriod: DateInterval? = nil
    )
    {
        self.filter = filter
        self.granularity = granularity
        self.groupBy = groupBy
        self.maxResults = maxResults
        self.metrics = metrics
        self.nextPageToken = nextPageToken
        self.sortBy = sortBy
        self.timePeriod = timePeriod
    }
}

extension GetReservationCoverageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetReservationCoverageInput(filter: \(String(describing: filter)), granularity: \(String(describing: granularity)), groupBy: \(String(describing: groupBy)), maxResults: \(String(describing: maxResults)), metrics: \(String(describing: metrics)), nextPageToken: \(String(describing: nextPageToken)), sortBy: \(String(describing: sortBy)), timePeriod: \(String(describing: timePeriod)))"}
}
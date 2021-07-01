// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDistributionMetricDataInput: Equatable {
    /// <p>The name of the distribution for which to get metric data.</p>
    ///          <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    ///       can specify.</p>
    public let distributionName: String?
    /// <p>The end of the time interval for which to get metric data.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Specified in Coordinated Universal Time (UTC).</p>
    ///             </li>
    ///             <li>
    ///                <p>Specified in the Unix time format.</p>
    ///                <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
    ///             <code>1538427600</code> as the end time.</p>
    ///             </li>
    ///          </ul>
    ///          <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    public let endTime: Date?
    /// <p>The metric for which you want to return information.</p>
    ///          <p>Valid distribution metric names are listed below, along with the most useful
    ///         <code>statistics</code> to include in your request, and the published <code>unit</code>
    ///       value.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>
    ///                      <code>Requests</code>
    ///                   </b> - The total number of viewer
    ///           requests received by your Lightsail distribution, for all HTTP methods, and for both
    ///           HTTP and HTTPS requests.</p>
    ///                <p>
    ///                   <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    ///                <p>
    ///                   <code>Unit</code>: The published unit is <code>None</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>
    ///                      <code>BytesDownloaded</code>
    ///                   </b> - The number of bytes
    ///           downloaded by viewers for GET, HEAD, and OPTIONS requests.</p>
    ///                <p>
    ///                   <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    ///                <p>
    ///                   <code>Unit</code>: The published unit is <code>None</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>
    ///                      <code>BytesUploaded </code>
    ///                   </b> - The number of bytes
    ///           uploaded to your origin by your Lightsail distribution, using POST and PUT
    ///           requests.</p>
    ///                <p>
    ///                   <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    ///                <p>
    ///                   <code>Unit</code>: The published unit is <code>None</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>
    ///                      <code>TotalErrorRate</code>
    ///                   </b> - The percentage of all
    ///           viewer requests for which the response's HTTP status code was 4xx or 5xx.</p>
    ///                <p>
    ///                   <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    ///                <p>
    ///                   <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>
    ///                      <code>4xxErrorRate</code>
    ///                   </b> - The percentage of all
    ///           viewer requests for which the response's HTTP status cod was 4xx. In these cases, the
    ///           client or client viewer may have made an error. For example, a status code of 404 (Not
    ///           Found) means that the client requested an object that could not be found.</p>
    ///                <p>
    ///                   <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    ///                <p>
    ///                   <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>
    ///                      <code>5xxErrorRate</code>
    ///                   </b> - The percentage of all
    ///           viewer requests for which the response's HTTP status code was 5xx. In these cases, the
    ///           origin server did not satisfy the requests. For example, a status code of 503 (Service
    ///           Unavailable) means that the origin server is currently unavailable.</p>
    ///                <p>
    ///                   <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    ///                <p>
    ///                   <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    ///             </li>
    ///          </ul>
    public let metricName: DistributionMetricName?
    /// <p>The granularity, in seconds, for the metric data points that will be returned.</p>
    public let period: Int
    /// <p>The start of the time interval for which to get metric data.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Specified in Coordinated Universal Time (UTC).</p>
    ///             </li>
    ///             <li>
    ///                <p>Specified in the Unix time format.</p>
    ///                <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
    ///             <code>1538424000</code> as the start time.</p>
    ///             </li>
    ///          </ul>
    ///          <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    public let startTime: Date?
    /// <p>The statistic for the metric.</p>
    ///          <p>The following statistics are available:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Minimum</code> - The lowest value observed during the specified period. Use this
    ///           value to determine low volumes of activity for your application.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Maximum</code> - The highest value observed during the specified period. Use
    ///           this value to determine high volumes of activity for your application.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Sum</code> - All values submitted for the matching metric added together. You
    ///           can use this statistic to determine the total volume of a metric.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    ///           comparing this statistic with the Minimum and Maximum values, you can determine the full
    ///           scope of a metric and how close the average use is to the Minimum and Maximum values. This
    ///           comparison helps you to know when to increase or decrease your resources.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>SampleCount</code> - The count, or number, of data points used for the
    ///           statistical calculation.</p>
    ///             </li>
    ///          </ul>
    public let statistics: [MetricStatistic]?
    /// <p>The unit for the metric data request.</p>
    ///          <p>Valid units depend on the metric data being requested. For the valid units with each
    ///       available metric, see the <code>metricName</code> parameter.</p>
    public let unit: MetricUnit?

    public init (
        distributionName: String? = nil,
        endTime: Date? = nil,
        metricName: DistributionMetricName? = nil,
        period: Int = 0,
        startTime: Date? = nil,
        statistics: [MetricStatistic]? = nil,
        unit: MetricUnit? = nil
    )
    {
        self.distributionName = distributionName
        self.endTime = endTime
        self.metricName = metricName
        self.period = period
        self.startTime = startTime
        self.statistics = statistics
        self.unit = unit
    }
}

extension GetDistributionMetricDataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDistributionMetricDataInput(distributionName: \(String(describing: distributionName)), endTime: \(String(describing: endTime)), metricName: \(String(describing: metricName)), period: \(String(describing: period)), startTime: \(String(describing: startTime)), statistics: \(String(describing: statistics)), unit: \(String(describing: unit)))"}
}
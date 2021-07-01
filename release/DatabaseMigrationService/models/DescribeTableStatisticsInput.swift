// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DescribeTableStatisticsInput: Equatable {
    /// <p>Filters applied to table statistics.</p>
    ///          <p>Valid filter names: schema-name | table-name | table-state</p>
    ///          <p>A combination of filters creates an AND condition where each record matches all
    ///          specified filters.</p>
    public let filters: [Filter]?
    /// <p> An optional pagination token provided by a previous request. If this parameter is
    ///          specified, the response includes only records beyond the marker, up to the value specified
    ///          by <code>MaxRecords</code>. </p>
    public let marker: String?
    /// <p> The maximum number of records to include in the response. If more records exist than
    ///          the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    ///          in the response so that the remaining results can be retrieved. </p>
    ///          <p>Default: 100</p>
    ///          <p>Constraints: Minimum 20, maximum 500.</p>
    public let maxRecords: Int?
    /// <p>The Amazon Resource Name (ARN) of the replication task.</p>
    public let replicationTaskArn: String?

    public init (
        filters: [Filter]? = nil,
        marker: String? = nil,
        maxRecords: Int? = nil,
        replicationTaskArn: String? = nil
    )
    {
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.replicationTaskArn = replicationTaskArn
    }
}

extension DescribeTableStatisticsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTableStatisticsInput(filters: \(String(describing: filters)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)), replicationTaskArn: \(String(describing: replicationTaskArn)))"}
}
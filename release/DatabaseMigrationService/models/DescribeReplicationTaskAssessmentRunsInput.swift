// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DescribeReplicationTaskAssessmentRunsInput: Equatable {
    /// <p>Filters applied to the premigration assessment runs described in the form of key-value pairs.</p>
    ///          <p>Valid filter names: <code>replication-task-assessment-run-arn</code>, <code>replication-task-arn</code>,
    ///          <code>replication-instance-arn</code>, <code>status</code>
    ///          </p>
    public let filters: [Filter]?
    /// <p>An optional pagination token provided by a previous request. If this parameter is
    ///          specified, the response includes only records beyond the marker, up to the value specified
    ///          by <code>MaxRecords</code>.</p>
    public let marker: String?
    /// <p>The maximum number of records to include in the response. If more records exist than the
    ///          specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    ///          the response so that the remaining results can be retrieved.</p>
    public let maxRecords: Int?

    public init (
        filters: [Filter]? = nil,
        marker: String? = nil,
        maxRecords: Int? = nil
    )
    {
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }
}

extension DescribeReplicationTaskAssessmentRunsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeReplicationTaskAssessmentRunsInput(filters: \(String(describing: filters)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)))"}
}
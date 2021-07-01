// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetColumnStatisticsForTableOutputResponse: Equatable {
    /// <p>List of ColumnStatistics that failed to be retrieved.</p>
    public let columnStatisticsList: [ColumnStatistics]?
    /// <p>List of ColumnStatistics that failed to be retrieved.</p>
    public let errors: [ColumnError]?

    public init (
        columnStatisticsList: [ColumnStatistics]? = nil,
        errors: [ColumnError]? = nil
    )
    {
        self.columnStatisticsList = columnStatisticsList
        self.errors = errors
    }
}

extension GetColumnStatisticsForTableOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetColumnStatisticsForTableOutputResponse(columnStatisticsList: \(String(describing: columnStatisticsList)), errors: \(String(describing: errors)))"}
}
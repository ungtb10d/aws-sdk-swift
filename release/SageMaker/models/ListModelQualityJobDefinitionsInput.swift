// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListModelQualityJobDefinitionsInput: Equatable {
    /// <p>A filter that returns only model quality monitoring job definitions created after the
    ///          specified time.</p>
    public let creationTimeAfter: Date?
    /// <p>A filter that returns only model quality monitoring job definitions created before the
    ///          specified time.</p>
    public let creationTimeBefore: Date?
    /// <p>A filter that returns only model quality monitoring job definitions that are associated
    ///          with the specified endpoint.</p>
    public let endpointName: String?
    /// <p>The maximum number of results to return in a call to
    ///             <code>ListModelQualityJobDefinitions</code>.</p>
    public let maxResults: Int?
    /// <p>A string in the transform job name. This filter returns only model quality monitoring
    ///          job definitions whose name contains the specified string.</p>
    public let nameContains: String?
    /// <p>If the result of the previous <code>ListModelQualityJobDefinitions</code> request was
    ///          truncated, the response includes a <code>NextToken</code>. To retrieve the next set of
    ///          model quality monitoring job definitions, use the token in the next request.</p>
    public let nextToken: String?
    /// <p>The field to sort results by. The default is <code>CreationTime</code>.</p>
    public let sortBy: MonitoringJobDefinitionSortKey?
    /// <p>The sort order for results. The default is <code>Descending</code>.</p>
    public let sortOrder: SortOrder?

    public init (
        creationTimeAfter: Date? = nil,
        creationTimeBefore: Date? = nil,
        endpointName: String? = nil,
        maxResults: Int? = nil,
        nameContains: String? = nil,
        nextToken: String? = nil,
        sortBy: MonitoringJobDefinitionSortKey? = nil,
        sortOrder: SortOrder? = nil
    )
    {
        self.creationTimeAfter = creationTimeAfter
        self.creationTimeBefore = creationTimeBefore
        self.endpointName = endpointName
        self.maxResults = maxResults
        self.nameContains = nameContains
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }
}

extension ListModelQualityJobDefinitionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListModelQualityJobDefinitionsInput(creationTimeAfter: \(String(describing: creationTimeAfter)), creationTimeBefore: \(String(describing: creationTimeBefore)), endpointName: \(String(describing: endpointName)), maxResults: \(String(describing: maxResults)), nameContains: \(String(describing: nameContains)), nextToken: \(String(describing: nextToken)), sortBy: \(String(describing: sortBy)), sortOrder: \(String(describing: sortOrder)))"}
}
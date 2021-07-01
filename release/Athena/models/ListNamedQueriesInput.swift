// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListNamedQueriesInput: Equatable {
    /// <p>The maximum number of queries to return in this request.</p>
    public let maxResults: Int?
    /// <p>A token generated by the Athena service that specifies where to continue pagination if
    ///             a previous request was truncated. To obtain the next set of pages, pass in the
    ///                 <code>NextToken</code> from the response object of the previous page call.</p>
    public let nextToken: String?
    /// <p>The name of the workgroup from which the named queries are being returned. If a
    ///             workgroup is not specified, the saved queries for the primary workgroup are
    ///             returned.</p>
    public let workGroup: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        workGroup: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.workGroup = workGroup
    }
}

extension ListNamedQueriesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListNamedQueriesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), workGroup: \(String(describing: workGroup)))"}
}
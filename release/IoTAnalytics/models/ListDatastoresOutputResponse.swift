// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListDatastoresOutputResponse: Equatable {
    /// <p>A list of <code>DatastoreSummary</code> objects.</p>
    public let datastoreSummaries: [DatastoreSummary]?
    /// <p>The token to retrieve the next set of results, or <code>null</code> if there are no more
    ///       results.</p>
    public let nextToken: String?

    public init (
        datastoreSummaries: [DatastoreSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.datastoreSummaries = datastoreSummaries
        self.nextToken = nextToken
    }
}

extension ListDatastoresOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListDatastoresOutputResponse(datastoreSummaries: \(String(describing: datastoreSummaries)), nextToken: \(String(describing: nextToken)))"}
}
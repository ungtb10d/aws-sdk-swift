// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListNamespacesOutputResponse: Equatable {
    /// <p>An array that contains one <code>NamespaceSummary</code> object for each namespace that matches the specified
    ///    filter criteria.</p>
    public let namespaces: [NamespaceSummary]?
    /// <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get the
    ///    next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    ///    request.</p>
    ///          <note>
    ///             <p>AWS Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria. It's
    ///     possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria but that
    ///     subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the criteria.</p>
    ///          </note>
    public let nextToken: String?

    public init (
        namespaces: [NamespaceSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.namespaces = namespaces
        self.nextToken = nextToken
    }
}

extension ListNamespacesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListNamespacesOutputResponse(namespaces: \(String(describing: namespaces)), nextToken: \(String(describing: nextToken)))"}
}
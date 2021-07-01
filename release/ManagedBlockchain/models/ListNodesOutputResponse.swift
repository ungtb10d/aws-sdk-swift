// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListNodesOutputResponse: Equatable {
    /// <p>The pagination token that indicates the next set of results to retrieve.</p>
    public let nextToken: String?
    /// <p>An array of <code>NodeSummary</code> objects that contain configuration properties for each node.</p>
    public let nodes: [NodeSummary]?

    public init (
        nextToken: String? = nil,
        nodes: [NodeSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.nodes = nodes
    }
}

extension ListNodesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListNodesOutputResponse(nextToken: \(String(describing: nextToken)), nodes: \(String(describing: nodes)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTypedLinkFacetNamesInput: Equatable {
    /// <p>The maximum number of results to retrieve.</p>
    public let maxResults: Int?
    /// <p>The pagination token.</p>
    public let nextToken: String?
    /// <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    ///       information, see <a>arns</a>.</p>
    public let schemaArn: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        schemaArn: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.schemaArn = schemaArn
    }
}

extension ListTypedLinkFacetNamesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTypedLinkFacetNamesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), schemaArn: \(String(describing: schemaArn)))"}
}
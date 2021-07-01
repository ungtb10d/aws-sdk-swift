// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSchemasOutputResponse: Equatable {
    /// <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    public let nextToken: String?
    /// <p>An array of <code>SchemaListItem</code> objects containing details of each schema.</p>
    public let schemas: [SchemaListItem]?

    public init (
        nextToken: String? = nil,
        schemas: [SchemaListItem]? = nil
    )
    {
        self.nextToken = nextToken
        self.schemas = schemas
    }
}

extension ListSchemasOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSchemasOutputResponse(nextToken: \(String(describing: nextToken)), schemas: \(String(describing: schemas)))"}
}
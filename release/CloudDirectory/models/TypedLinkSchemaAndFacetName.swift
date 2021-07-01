// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Identifies the schema Amazon Resource Name (ARN) and facet name for the typed
///       link.</p>
public struct TypedLinkSchemaAndFacetName: Equatable {
    /// <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    ///       information, see <a>arns</a>.</p>
    public let schemaArn: String?
    /// <p>The unique name of the typed link facet.</p>
    public let typedLinkName: String?

    public init (
        schemaArn: String? = nil,
        typedLinkName: String? = nil
    )
    {
        self.schemaArn = schemaArn
        self.typedLinkName = typedLinkName
    }
}

extension TypedLinkSchemaAndFacetName: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TypedLinkSchemaAndFacetName(schemaArn: \(String(describing: schemaArn)), typedLinkName: \(String(describing: typedLinkName)))"}
}
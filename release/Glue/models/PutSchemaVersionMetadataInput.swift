// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutSchemaVersionMetadataInput: Equatable {
    /// <p>The metadata key's corresponding value.</p>
    public let metadataKeyValue: MetadataKeyValuePair?
    /// <p>The unique ID for the schema.</p>
    public let schemaId: SchemaId?
    /// <p>The unique version ID of the schema version.</p>
    public let schemaVersionId: String?
    /// <p>The version number of the schema.</p>
    public let schemaVersionNumber: SchemaVersionNumber?

    public init (
        metadataKeyValue: MetadataKeyValuePair? = nil,
        schemaId: SchemaId? = nil,
        schemaVersionId: String? = nil,
        schemaVersionNumber: SchemaVersionNumber? = nil
    )
    {
        self.metadataKeyValue = metadataKeyValue
        self.schemaId = schemaId
        self.schemaVersionId = schemaVersionId
        self.schemaVersionNumber = schemaVersionNumber
    }
}

extension PutSchemaVersionMetadataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutSchemaVersionMetadataInput(metadataKeyValue: \(String(describing: metadataKeyValue)), schemaId: \(String(describing: schemaId)), schemaVersionId: \(String(describing: schemaVersionId)), schemaVersionNumber: \(String(describing: schemaVersionNumber)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetTableMetadataInput: Equatable {
    /// <p>The name of the data catalog that contains the database and table metadata to
    ///             return.</p>
    public let catalogName: String?
    /// <p>The name of the database that contains the table metadata to return.</p>
    public let databaseName: String?
    /// <p>The name of the table for which metadata is returned.</p>
    public let tableName: String?

    public init (
        catalogName: String? = nil,
        databaseName: String? = nil,
        tableName: String? = nil
    )
    {
        self.catalogName = catalogName
        self.databaseName = databaseName
        self.tableName = tableName
    }
}

extension GetTableMetadataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetTableMetadataInput(catalogName: \(String(describing: catalogName)), databaseName: \(String(describing: databaseName)), tableName: \(String(describing: tableName)))"}
}
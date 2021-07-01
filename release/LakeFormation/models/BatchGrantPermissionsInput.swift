// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchGrantPermissionsInput: Equatable {
    /// <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>
    public let catalogId: String?
    /// <p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>
    public let entries: [BatchPermissionsRequestEntry]?

    public init (
        catalogId: String? = nil,
        entries: [BatchPermissionsRequestEntry]? = nil
    )
    {
        self.catalogId = catalogId
        self.entries = entries
    }
}

extension BatchGrantPermissionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchGrantPermissionsInput(catalogId: \(String(describing: catalogId)), entries: \(String(describing: entries)))"}
}
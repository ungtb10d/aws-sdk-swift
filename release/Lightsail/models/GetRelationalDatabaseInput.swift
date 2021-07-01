// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRelationalDatabaseInput: Equatable {
    /// <p>The name of the database that you are looking up.</p>
    public let relationalDatabaseName: String?

    public init (
        relationalDatabaseName: String? = nil
    )
    {
        self.relationalDatabaseName = relationalDatabaseName
    }
}

extension GetRelationalDatabaseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRelationalDatabaseInput(relationalDatabaseName: \(String(describing: relationalDatabaseName)))"}
}
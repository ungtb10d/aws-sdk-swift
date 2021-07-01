// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetResourceLFTagsOutputResponse: Equatable {
    /// <p>A list of tags applied to a database resource.</p>
    public let lFTagOnDatabase: [LFTagPair]?
    /// <p>A list of tags applied to a column resource.</p>
    public let lFTagsOnColumns: [ColumnLFTag]?
    /// <p>A list of tags applied to a table resource.</p>
    public let lFTagsOnTable: [LFTagPair]?

    public init (
        lFTagOnDatabase: [LFTagPair]? = nil,
        lFTagsOnColumns: [ColumnLFTag]? = nil,
        lFTagsOnTable: [LFTagPair]? = nil
    )
    {
        self.lFTagOnDatabase = lFTagOnDatabase
        self.lFTagsOnColumns = lFTagsOnColumns
        self.lFTagsOnTable = lFTagsOnTable
    }
}

extension GetResourceLFTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResourceLFTagsOutputResponse(lFTagOnDatabase: \(String(describing: lFTagOnDatabase)), lFTagsOnColumns: \(String(describing: lFTagsOnColumns)), lFTagsOnTable: \(String(describing: lFTagsOnTable)))"}
}
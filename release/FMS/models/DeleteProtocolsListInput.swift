// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteProtocolsListInput: Equatable {
    /// <p>The ID of the protocols list that you want to delete. You can retrieve this ID from
    ///       <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>
    public let listId: String?

    public init (
        listId: String? = nil
    )
    {
        self.listId = listId
    }
}

extension DeleteProtocolsListInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteProtocolsListInput(listId: \(String(describing: listId)))"}
}
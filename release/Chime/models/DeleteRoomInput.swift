// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteRoomInput: Equatable {
    /// <p>The Amazon Chime account ID.</p>
    public let accountId: String?
    /// <p>The chat room ID.</p>
    public let roomId: String?

    public init (
        accountId: String? = nil,
        roomId: String? = nil
    )
    {
        self.accountId = accountId
        self.roomId = roomId
    }
}

extension DeleteRoomInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteRoomInput(accountId: \(String(describing: accountId)), roomId: \(String(describing: roomId)))"}
}
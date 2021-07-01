// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SendChannelMessageOutputResponse: Equatable {
    /// <p>The ARN of the channel.</p>
    public let channelArn: String?
    /// <p>The ID string assigned to each message.</p>
    public let messageId: String?

    public init (
        channelArn: String? = nil,
        messageId: String? = nil
    )
    {
        self.channelArn = channelArn
        self.messageId = messageId
    }
}

extension SendChannelMessageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendChannelMessageOutputResponse(channelArn: \(String(describing: channelArn)), messageId: \(String(describing: messageId)))"}
}
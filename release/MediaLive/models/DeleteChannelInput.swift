// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Placeholder documentation for DeleteChannelRequest
public struct DeleteChannelInput: Equatable {
    /// Unique ID of the channel.
    public let channelId: String?

    public init (
        channelId: String? = nil
    )
    {
        self.channelId = channelId
    }
}

extension DeleteChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteChannelInput(channelId: \(String(describing: channelId)))"}
}
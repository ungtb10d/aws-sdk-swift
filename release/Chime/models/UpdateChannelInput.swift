// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateChannelInput: Equatable {
    /// <p>The ARN of the channel.</p>
    public let channelArn: String?
    /// <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    public let chimeBearer: String?
    /// <p>The metadata for the update request.</p>
    public let metadata: String?
    /// <p>The mode of the update request.</p>
    public let mode: ChannelMode?
    /// <p>The name of the channel.</p>
    public let name: String?

    public init (
        channelArn: String? = nil,
        chimeBearer: String? = nil,
        metadata: String? = nil,
        mode: ChannelMode? = nil,
        name: String? = nil
    )
    {
        self.channelArn = channelArn
        self.chimeBearer = chimeBearer
        self.metadata = metadata
        self.mode = mode
        self.name = name
    }
}

extension UpdateChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateChannelInput(channelArn: \(String(describing: channelArn)), chimeBearer: \(String(describing: chimeBearer)), metadata: \(String(describing: metadata)), mode: \(String(describing: mode)), name: \(String(describing: name)))"}
}
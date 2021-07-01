// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Placeholder documentation for ListChannelsResponse
public struct ListChannelsOutputResponse: Equatable {
    /// Placeholder documentation for __listOfChannelSummary
    public let channels: [ChannelSummary]?
    /// Placeholder documentation for __string
    public let nextToken: String?

    public init (
        channels: [ChannelSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.channels = channels
        self.nextToken = nextToken
    }
}

extension ListChannelsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListChannelsOutputResponse(channels: \(String(describing: channels)), nextToken: \(String(describing: nextToken)))"}
}
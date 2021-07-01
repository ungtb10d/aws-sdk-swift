// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The streaming image ID.</p>
public struct UpdateStreamingImageInput: Equatable {
    /// <p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>
    public var clientToken: String?
    /// <p>The description.</p>
    public let description: String?
    /// <p>The name for the streaming image.</p>
    public let name: String?
    /// <p>The streaming image ID.</p>
    public let streamingImageId: String?
    /// <p>The studio ID.</p>
    public let studioId: String?

    public init (
        clientToken: String? = nil,
        description: String? = nil,
        name: String? = nil,
        streamingImageId: String? = nil,
        studioId: String? = nil
    )
    {
        self.clientToken = clientToken
        self.description = description
        self.name = name
        self.streamingImageId = streamingImageId
        self.studioId = studioId
    }
}

extension UpdateStreamingImageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateStreamingImageInput(clientToken: \(String(describing: clientToken)), description: \(String(describing: description)), name: \(String(describing: name)), streamingImageId: \(String(describing: streamingImageId)), studioId: \(String(describing: studioId)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteStreamingImageOutputResponse: Equatable {
    /// <p>The streaming image.</p>
    public let streamingImage: StreamingImage?

    public init (
        streamingImage: StreamingImage? = nil
    )
    {
        self.streamingImage = streamingImage
    }
}

extension DeleteStreamingImageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteStreamingImageOutputResponse(streamingImage: \(String(describing: streamingImage)))"}
}
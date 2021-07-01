// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateStreamingImageOutputResponse: Equatable {
    public let streamingImage: StreamingImage?

    public init (
        streamingImage: StreamingImage? = nil
    )
    {
        self.streamingImage = streamingImage
    }
}

extension CreateStreamingImageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateStreamingImageOutputResponse(streamingImage: \(String(describing: streamingImage)))"}
}
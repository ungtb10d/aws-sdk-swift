// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A streaming distribution Configuration and a list of tags to be associated with the
/// 			streaming distribution.</p>
public struct StreamingDistributionConfigWithTags: Equatable {
    /// <p>A streaming distribution Configuration.</p>
    public let streamingDistributionConfig: StreamingDistributionConfig?
    /// <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    public let tags: Tags?

    public init (
        streamingDistributionConfig: StreamingDistributionConfig? = nil,
        tags: Tags? = nil
    )
    {
        self.streamingDistributionConfig = streamingDistributionConfig
        self.tags = tags
    }
}

extension StreamingDistributionConfigWithTags: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StreamingDistributionConfigWithTags(streamingDistributionConfig: \(String(describing: streamingDistributionConfig)), tags: \(String(describing: tags)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The returned result of the corresponding request. </p>
public struct CreateStreamingDistributionWithTagsOutputResponse: Equatable {
    /// <p>The current version of the distribution created.</p>
    public let eTag: String?
    /// <p>The fully qualified URI of the new streaming distribution resource just created.</p>
    public let location: String?
    /// <p>The streaming distribution's information. </p>
    public let streamingDistribution: StreamingDistribution?

    public init (
        eTag: String? = nil,
        location: String? = nil,
        streamingDistribution: StreamingDistribution? = nil
    )
    {
        self.eTag = eTag
        self.location = location
        self.streamingDistribution = streamingDistribution
    }
}

extension CreateStreamingDistributionWithTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateStreamingDistributionWithTagsOutputResponse(eTag: \(String(describing: eTag)), location: \(String(describing: location)), streamingDistribution: \(String(describing: streamingDistribution)))"}
}
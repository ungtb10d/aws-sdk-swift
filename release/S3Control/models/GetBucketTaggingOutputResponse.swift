// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBucketTaggingOutputResponse: Equatable {
    /// <p>The tags set of the Outposts bucket.</p>
    public let tagSet: [S3Tag]?

    public init (
        tagSet: [S3Tag]? = nil
    )
    {
        self.tagSet = tagSet
    }
}

extension GetBucketTaggingOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBucketTaggingOutputResponse(tagSet: \(String(describing: tagSet)))"}
}
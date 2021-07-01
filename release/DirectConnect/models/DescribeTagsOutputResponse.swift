// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTagsOutputResponse: Equatable {
    /// <p>Information about the tags.</p>
    public let resourceTags: [ResourceTag]?

    public init (
        resourceTags: [ResourceTag]? = nil
    )
    {
        self.resourceTags = resourceTags
    }
}

extension DescribeTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTagsOutputResponse(resourceTags: \(String(describing: resourceTags)))"}
}
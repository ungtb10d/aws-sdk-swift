// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster
    ///       ID, use <a>DescribeClusters</a>.</p>
    public let resourceId: String?
    /// <p>A list of one or more tags.</p>
    public let tagList: [Tag]?

    public init (
        resourceId: String? = nil,
        tagList: [Tag]? = nil
    )
    {
        self.resourceId = resourceId
        self.tagList = tagList
    }
}

extension TagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagResourceInput(resourceId: \(String(describing: resourceId)), tagList: \(String(describing: tagList)))"}
}
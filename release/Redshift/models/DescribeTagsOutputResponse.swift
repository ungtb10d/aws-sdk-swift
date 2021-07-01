// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DescribeTagsOutputResponse: Equatable {
    /// <p>A value that indicates the starting point for the next set of response records in a
    ///             subsequent request. If a value is returned in a response, you can retrieve the next set
    ///             of records by providing this returned marker value in the <code>Marker</code> parameter
    ///             and retrying the command. If the <code>Marker</code> field is empty, all response
    ///             records have been retrieved for the request. </p>
    public let marker: String?
    /// <p>A list of tags with their associated resources.</p>
    public let taggedResources: [TaggedResource]?

    public init (
        marker: String? = nil,
        taggedResources: [TaggedResource]? = nil
    )
    {
        self.marker = marker
        self.taggedResources = taggedResources
    }
}

extension DescribeTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTagsOutputResponse(marker: \(String(describing: marker)), taggedResources: \(String(describing: taggedResources)))"}
}
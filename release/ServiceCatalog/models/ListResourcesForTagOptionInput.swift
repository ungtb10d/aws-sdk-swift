// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListResourcesForTagOptionInput: Equatable {
    /// <p>The maximum number of items to return with this call.</p>
    public let pageSize: Int
    /// <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    public let pageToken: String?
    /// <p>The resource type.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Portfolio</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Product</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let resourceType: String?
    /// <p>The TagOption identifier.</p>
    public let tagOptionId: String?

    public init (
        pageSize: Int = 0,
        pageToken: String? = nil,
        resourceType: String? = nil,
        tagOptionId: String? = nil
    )
    {
        self.pageSize = pageSize
        self.pageToken = pageToken
        self.resourceType = resourceType
        self.tagOptionId = tagOptionId
    }
}

extension ListResourcesForTagOptionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListResourcesForTagOptionInput(pageSize: \(String(describing: pageSize)), pageToken: \(String(describing: pageToken)), resourceType: \(String(describing: resourceType)), tagOptionId: \(String(describing: tagOptionId)))"}
}
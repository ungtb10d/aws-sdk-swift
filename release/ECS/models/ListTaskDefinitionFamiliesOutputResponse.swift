// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTaskDefinitionFamiliesOutputResponse: Equatable {
    /// <p>The list of task definition family names that match the
    /// 				<code>ListTaskDefinitionFamilies</code> request.</p>
    public let families: [String]?
    /// <p>The <code>nextToken</code> value to include in a future
    /// 				<code>ListTaskDefinitionFamilies</code> request. When the results of a
    /// 				<code>ListTaskDefinitionFamilies</code> request exceed <code>maxResults</code>, this
    /// 			value can be used to retrieve the next page of results. This value is <code>null</code>
    /// 			when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        families: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.families = families
        self.nextToken = nextToken
    }
}

extension ListTaskDefinitionFamiliesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTaskDefinitionFamiliesOutputResponse(families: \(String(describing: families)), nextToken: \(String(describing: nextToken)))"}
}
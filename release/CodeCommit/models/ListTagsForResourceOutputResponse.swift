// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceOutputResponse: Equatable {
    /// <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    public let nextToken: String?
    /// <p>A list of tag key and value pairs associated with the specified resource.</p>
    public let tags: [String:String]?

    public init (
        nextToken: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.nextToken = nextToken
        self.tags = tags
    }
}

extension ListTagsForResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceOutputResponse(nextToken: \(String(describing: nextToken)), tags: \(String(describing: tags)))"}
}
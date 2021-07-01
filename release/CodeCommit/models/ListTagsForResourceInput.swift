// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceInput: Equatable {
    /// <p>An enumeration token that, when provided in a request, returns the next batch of the
    ///             results.</p>
    public let nextToken: String?
    /// <p>The Amazon Resource Name (ARN) of the resource for which you want to get information
    ///             about tags, if any.</p>
    public let resourceArn: String?

    public init (
        nextToken: String? = nil,
        resourceArn: String? = nil
    )
    {
        self.nextToken = nextToken
        self.resourceArn = resourceArn
    }
}

extension ListTagsForResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceInput(nextToken: \(String(describing: nextToken)), resourceArn: \(String(describing: resourceArn)))"}
}
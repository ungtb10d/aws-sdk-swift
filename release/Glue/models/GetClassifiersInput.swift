// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetClassifiersInput: Equatable {
    /// <p>The size of the list to return (optional).</p>
    public let maxResults: Int?
    /// <p>An optional continuation token.</p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension GetClassifiersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetClassifiersInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
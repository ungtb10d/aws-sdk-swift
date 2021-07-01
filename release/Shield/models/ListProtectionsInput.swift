// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListProtectionsInput: Equatable {
    /// <p>The maximum number of <a>Protection</a> objects to return. If you leave this blank,
    ///          Shield Advanced returns the first 20 results.</p>
    ///          <p>This is a maximum value. Shield Advanced might return the results in smaller batches. That is, the number of objects returned could be less than <code>MaxResults</code>, even if there are still more objects yet to return. If there are more objects to return, Shield Advanced returns a value in <code>NextToken</code> that you can use in your next request, to get the next batch of objects.</p>
    public let maxResults: Int?
    /// <p>The <code>ListProtectionsRequest.NextToken</code> value from a previous call to <code>ListProtections</code>. Pass null if this is the first call.</p>
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

extension ListProtectionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListProtectionsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetMatchesInput: Equatable {
    /// <p>The unique name of the domain.</p>
    public let domainName: String?
    /// <p>The maximum number of results to return per page.</p>
    public let maxResults: Int?
    /// <p>The token for the next set of results. Use the value returned in the previous
    /// response in the next request to retrieve the next set of results.</p>
    public let nextToken: String?

    public init (
        domainName: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.domainName = domainName
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension GetMatchesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetMatchesInput(domainName: \(String(describing: domainName)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListMeetingsInput: Equatable {
    /// <p>The maximum number of results to return in a single call.</p>
    public let maxResults: Int?
    /// <p>The token to use to retrieve the next page of results.</p>
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

extension ListMeetingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListMeetingsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
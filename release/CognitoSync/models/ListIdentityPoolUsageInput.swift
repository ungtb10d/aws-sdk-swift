// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// A request for usage information on an
///       identity pool.
public struct ListIdentityPoolUsageInput: Equatable {
    /// The maximum number of results to
    ///       be returned.
    public let maxResults: Int
    /// A pagination token for obtaining
    ///       the next page of results.
    public let nextToken: String?

    public init (
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListIdentityPoolUsageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListIdentityPoolUsageInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to list lenses.</p>
public struct ListLensesInput: Equatable {
    /// <p>The maximum number of results to return for this request.</p>
    public let maxResults: Int
    /// <p>The token to use to retrieve the next set of results.</p>
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

extension ListLensesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListLensesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
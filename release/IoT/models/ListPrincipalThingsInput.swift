// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input for the ListPrincipalThings operation.</p>
public struct ListPrincipalThingsInput: Equatable {
    /// <p>The maximum number of results to return in this operation.</p>
    public let maxResults: Int?
    /// <p>To retrieve the next set of results, the <code>nextToken</code>
    /// 			value from a previous response; otherwise <b>null</b> to receive
    /// 			the first set of results.</p>
    public let nextToken: String?
    /// <p>The principal.</p>
    public let principal: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        principal: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.principal = principal
    }
}

extension ListPrincipalThingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPrincipalThingsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), principal: \(String(describing: principal)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListWorldTemplatesInput: Equatable {
    /// <p>When this parameter is used, <code>ListWorldTemplates</code> only returns
    ///             <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    ///          response element. The remaining results of the initial request can be seen by sending
    ///          another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code>
    ///          value. This value can be between 1 and 100. If this parameter is not used, then
    ///             <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code>
    ///          value if applicable. </p>
    public let maxResults: Int?
    /// <p>If the previous paginated request did not return all of the remaining results, the
    ///          response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    ///          next set of results, call <code>ListWorldTemplates</code> again and assign that token to
    ///          the request object's <code>nextToken</code> parameter. If there are no remaining results,
    ///          the previous response object's NextToken parameter is set to null. </p>
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

extension ListWorldTemplatesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListWorldTemplatesInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
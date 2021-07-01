// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListModelsInput: Equatable {
    /// <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    ///          If you specify a value greater than 100, a ValidationException
    ///          error occurs. The default value is 100.</p>
    public let maxResults: Int?
    /// <p>If the previous response was incomplete (because there is more data to retrieve),
    ///          Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    ///          retrieve the next set of models.</p>
    public let nextToken: String?
    /// <p>The name of the project that contains the model versions that you want to list.</p>
    public let projectName: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        projectName: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.projectName = projectName
    }
}

extension ListModelsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListModelsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), projectName: \(String(describing: projectName)))"}
}
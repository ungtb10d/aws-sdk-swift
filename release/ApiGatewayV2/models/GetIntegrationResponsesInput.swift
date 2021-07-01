// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetIntegrationResponsesInput: Equatable {
    /// <p>The API identifier.</p>
    public let apiId: String?
    /// <p>The integration ID.</p>
    public let integrationId: String?
    /// <p>The maximum number of elements to be returned for this resource.</p>
    public let maxResults: String?
    /// <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    public let nextToken: String?

    public init (
        apiId: String? = nil,
        integrationId: String? = nil,
        maxResults: String? = nil,
        nextToken: String? = nil
    )
    {
        self.apiId = apiId
        self.integrationId = integrationId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension GetIntegrationResponsesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetIntegrationResponsesInput(apiId: \(String(describing: apiId)), integrationId: \(String(describing: integrationId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
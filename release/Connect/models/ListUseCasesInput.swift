// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides summary information about the use cases for the specified Amazon Connect AppIntegration
///    association.</p>
public struct ListUseCasesInput: Equatable {
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The identifier for the integration association.</p>
    public let integrationAssociationId: String?
    /// <p>The maximum number of results to return per page.</p>
    public let maxResults: Int
    /// <p>The token for the next set of results. Use the value returned in the previous
    /// response in the next request to retrieve the next set of results.</p>
    public let nextToken: String?

    public init (
        instanceId: String? = nil,
        integrationAssociationId: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.instanceId = instanceId
        self.integrationAssociationId = integrationAssociationId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListUseCasesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListUseCasesInput(instanceId: \(String(describing: instanceId)), integrationAssociationId: \(String(describing: integrationAssociationId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
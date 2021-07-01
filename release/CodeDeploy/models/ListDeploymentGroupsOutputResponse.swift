// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>ListDeploymentGroups</code> operation.</p>
public struct ListDeploymentGroupsOutputResponse: Equatable {
    /// <p>The application name.</p>
    public let applicationName: String?
    /// <p>A list of deployment group names.</p>
    public let deploymentGroups: [String]?
    /// <p>If a large amount of information is returned, an identifier is also returned. It can
    ///             be used in a subsequent list deployment groups call to return the next set of deployment
    ///             groups in the list.</p>
    public let nextToken: String?

    public init (
        applicationName: String? = nil,
        deploymentGroups: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.applicationName = applicationName
        self.deploymentGroups = deploymentGroups
        self.nextToken = nextToken
    }
}

extension ListDeploymentGroupsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListDeploymentGroupsOutputResponse(applicationName: \(String(describing: applicationName)), deploymentGroups: \(String(describing: deploymentGroups)), nextToken: \(String(describing: nextToken)))"}
}
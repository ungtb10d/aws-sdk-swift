// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a container deployment configuration of an Amazon Lightsail container
///       service.</p>
///
///          <p>A deployment specifies the settings, such as the ports and launch command, of containers
///       that are deployed to your container service.</p>
public struct ContainerServiceDeploymentRequest: Equatable {
    /// <p>An object that describes the configuration for the containers of the deployment.</p>
    public let containers: [String:Container]?
    /// <p>An object that describes the endpoint of the deployment.</p>
    public let publicEndpoint: EndpointRequest?

    public init (
        containers: [String:Container]? = nil,
        publicEndpoint: EndpointRequest? = nil
    )
    {
        self.containers = containers
        self.publicEndpoint = publicEndpoint
    }
}

extension ContainerServiceDeploymentRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ContainerServiceDeploymentRequest(containers: \(String(describing: containers)), publicEndpoint: \(String(describing: publicEndpoint)))"}
}
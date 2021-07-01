// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateContainerServiceOutputResponse: Equatable {
    /// <p>An object that describes a container service.</p>
    public let containerService: ContainerService?

    public init (
        containerService: ContainerService? = nil
    )
    {
        self.containerService = containerService
    }
}

extension CreateContainerServiceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateContainerServiceOutputResponse(containerService: \(String(describing: containerService)))"}
}
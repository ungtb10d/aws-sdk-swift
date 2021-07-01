// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateResourceInput: Equatable {
    /// <p>The name or ID of the application.</p>
    public let application: String?
    /// <p>The name or ID of the resource.</p>
    public let resource: String?
    /// <p>The type of the resource that is being disassociated.</p>
    public let resourceType: ResourceType?

    public init (
        application: String? = nil,
        resource: String? = nil,
        resourceType: ResourceType? = nil
    )
    {
        self.application = application
        self.resource = resource
        self.resourceType = resourceType
    }
}

extension DisassociateResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateResourceInput(application: \(String(describing: application)), resource: \(String(describing: resource)), resourceType: \(String(describing: resourceType)))"}
}
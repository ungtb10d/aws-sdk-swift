// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRegistryInput: Equatable {
    /// <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    public let registryId: RegistryId?

    public init (
        registryId: RegistryId? = nil
    )
    {
        self.registryId = registryId
    }
}

extension GetRegistryInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRegistryInput(registryId: \(String(describing: registryId)))"}
}
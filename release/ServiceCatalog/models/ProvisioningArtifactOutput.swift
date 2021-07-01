// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provisioning artifact output.</p>
public struct ProvisioningArtifactOutput: Equatable {
    /// <p>Description of the provisioning artifact output key.</p>
    public let description: String?
    /// <p>The provisioning artifact output key.</p>
    public let key: String?

    public init (
        description: String? = nil,
        key: String? = nil
    )
    {
        self.description = description
        self.key = key
    }
}

extension ProvisioningArtifactOutput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProvisioningArtifactOutput(description: \(String(describing: description)), key: \(String(describing: key)))"}
}
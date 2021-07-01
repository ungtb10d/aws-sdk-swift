// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
public struct ProvisioningArtifact: Equatable {
    /// <p>The UTC time stamp of the creation time.</p>
    public let createdTime: Date?
    /// <p>The description of the provisioning artifact.</p>
    public let description: String?
    /// <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    public let guidance: ProvisioningArtifactGuidance?
    /// <p>The identifier of the provisioning artifact.</p>
    public let id: String?
    /// <p>The name of the provisioning artifact.</p>
    public let name: String?

    public init (
        createdTime: Date? = nil,
        description: String? = nil,
        guidance: ProvisioningArtifactGuidance? = nil,
        id: String? = nil,
        name: String? = nil
    )
    {
        self.createdTime = createdTime
        self.description = description
        self.guidance = guidance
        self.id = id
        self.name = name
    }
}

extension ProvisioningArtifact: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProvisioningArtifact(createdTime: \(String(describing: createdTime)), description: \(String(describing: description)), guidance: \(String(describing: guidance)), id: \(String(describing: id)), name: \(String(describing: name)))"}
}
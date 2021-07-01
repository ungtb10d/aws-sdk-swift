// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains summary information about the associated AppIntegrations.</p>
public struct IntegrationAssociationSummary: Equatable {
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The Amazon Resource Name (ARN) for the AppIntegration.</p>
    public let integrationArn: String?
    /// <p>The Amazon Resource Name (ARN) for the AppIntegration association.</p>
    public let integrationAssociationArn: String?
    /// <p>The identifier for the AppIntegration association.</p>
    public let integrationAssociationId: String?
    /// <p>The integration type.</p>
    public let integrationType: IntegrationType?
    /// <p>The user-provided, friendly name for the external application.</p>
    public let sourceApplicationName: String?
    /// <p>The URL for the external application.</p>
    public let sourceApplicationUrl: String?
    /// <p>The name of the source.</p>
    public let sourceType: SourceType?

    public init (
        instanceId: String? = nil,
        integrationArn: String? = nil,
        integrationAssociationArn: String? = nil,
        integrationAssociationId: String? = nil,
        integrationType: IntegrationType? = nil,
        sourceApplicationName: String? = nil,
        sourceApplicationUrl: String? = nil,
        sourceType: SourceType? = nil
    )
    {
        self.instanceId = instanceId
        self.integrationArn = integrationArn
        self.integrationAssociationArn = integrationAssociationArn
        self.integrationAssociationId = integrationAssociationId
        self.integrationType = integrationType
        self.sourceApplicationName = sourceApplicationName
        self.sourceApplicationUrl = sourceApplicationUrl
        self.sourceType = sourceType
    }
}

extension IntegrationAssociationSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IntegrationAssociationSummary(instanceId: \(String(describing: instanceId)), integrationArn: \(String(describing: integrationArn)), integrationAssociationArn: \(String(describing: integrationAssociationArn)), integrationAssociationId: \(String(describing: integrationAssociationId)), integrationType: \(String(describing: integrationType)), sourceApplicationName: \(String(describing: sourceApplicationName)), sourceApplicationUrl: \(String(describing: sourceApplicationUrl)), sourceType: \(String(describing: sourceType)))"}
}
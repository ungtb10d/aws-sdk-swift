// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the ARN of the analyzed resource.</p>
public struct AnalyzedResourceSummary: Equatable {
    /// <p>The ARN of the analyzed resource.</p>
    public let resourceArn: String?
    /// <p>The AWS account ID that owns the resource.</p>
    public let resourceOwnerAccount: String?
    /// <p>The type of resource that was analyzed.</p>
    public let resourceType: ResourceType?

    public init (
        resourceArn: String? = nil,
        resourceOwnerAccount: String? = nil,
        resourceType: ResourceType? = nil
    )
    {
        self.resourceArn = resourceArn
        self.resourceOwnerAccount = resourceOwnerAccount
        self.resourceType = resourceType
    }
}

extension AnalyzedResourceSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AnalyzedResourceSummary(resourceArn: \(String(describing: resourceArn)), resourceOwnerAccount: \(String(describing: resourceOwnerAccount)), resourceType: \(String(describing: resourceType)))"}
}
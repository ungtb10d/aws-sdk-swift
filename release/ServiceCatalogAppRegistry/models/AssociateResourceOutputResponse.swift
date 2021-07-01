// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateResourceOutputResponse: Equatable {
    /// <p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>
    public let applicationArn: String?
    /// <p>The Amazon resource name (ARN) that specifies the resource.</p>
    public let resourceArn: String?

    public init (
        applicationArn: String? = nil,
        resourceArn: String? = nil
    )
    {
        self.applicationArn = applicationArn
        self.resourceArn = resourceArn
    }
}

extension AssociateResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateResourceOutputResponse(applicationArn: \(String(describing: applicationArn)), resourceArn: \(String(describing: resourceArn)))"}
}
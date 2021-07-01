// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeregisterResourceInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>
    public let resourceArn: String?

    public init (
        resourceArn: String? = nil
    )
    {
        self.resourceArn = resourceArn
    }
}

extension DeregisterResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeregisterResourceInput(resourceArn: \(String(describing: resourceArn)))"}
}
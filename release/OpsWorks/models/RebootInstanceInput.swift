// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RebootInstanceInput: Equatable {
    /// <p>The instance ID.</p>
    public let instanceId: String?

    public init (
        instanceId: String? = nil
    )
    {
        self.instanceId = instanceId
    }
}

extension RebootInstanceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RebootInstanceInput(instanceId: \(String(describing: instanceId)))"}
}
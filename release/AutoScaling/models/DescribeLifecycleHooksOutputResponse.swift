// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeLifecycleHooksOutputResponse: Equatable {
    /// <p>The lifecycle hooks for the specified group.</p>
    public let lifecycleHooks: [LifecycleHook]?

    public init (
        lifecycleHooks: [LifecycleHook]? = nil
    )
    {
        self.lifecycleHooks = lifecycleHooks
    }
}

extension DescribeLifecycleHooksOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeLifecycleHooksOutputResponse(lifecycleHooks: \(String(describing: lifecycleHooks)))"}
}
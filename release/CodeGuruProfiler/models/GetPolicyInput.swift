// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             The structure representing the <code>getPolicyRequest</code>.
///         </p>
public struct GetPolicyInput: Equatable {
    /// <p>The name of the profiling group.</p>
    public let profilingGroupName: String?

    public init (
        profilingGroupName: String? = nil
    )
    {
        self.profilingGroupName = profilingGroupName
    }
}

extension GetPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPolicyInput(profilingGroupName: \(String(describing: profilingGroupName)))"}
}
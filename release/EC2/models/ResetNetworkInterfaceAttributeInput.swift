// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for ResetNetworkInterfaceAttribute.</p>
public struct ResetNetworkInterfaceAttributeInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///             and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///             Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the network interface.</p>
    public let networkInterfaceId: String?
    /// <p>The source/destination checking attribute. Resets the value to <code>true</code>.</p>
    public let sourceDestCheck: String?

    public init (
        dryRun: Bool = false,
        networkInterfaceId: String? = nil,
        sourceDestCheck: String? = nil
    )
    {
        self.dryRun = dryRun
        self.networkInterfaceId = networkInterfaceId
        self.sourceDestCheck = sourceDestCheck
    }
}

extension ResetNetworkInterfaceAttributeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResetNetworkInterfaceAttributeInput(dryRun: \(String(describing: dryRun)), networkInterfaceId: \(String(describing: networkInterfaceId)), sourceDestCheck: \(String(describing: sourceDestCheck)))"}
}
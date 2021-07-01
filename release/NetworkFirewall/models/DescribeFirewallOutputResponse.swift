// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeFirewallOutputResponse: Equatable {
    /// <p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>
    public let firewall: Firewall?
    /// <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    public let firewallStatus: FirewallStatus?
    /// <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    ///          <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    ///          <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    public let updateToken: String?

    public init (
        firewall: Firewall? = nil,
        firewallStatus: FirewallStatus? = nil,
        updateToken: String? = nil
    )
    {
        self.firewall = firewall
        self.firewallStatus = firewallStatus
        self.updateToken = updateToken
    }
}

extension DescribeFirewallOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFirewallOutputResponse(firewall: \(String(describing: firewall)), firewallStatus: \(String(describing: firewallStatus)), updateToken: \(String(describing: updateToken)))"}
}
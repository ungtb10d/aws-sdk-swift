// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateFirewallPolicyOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the firewall.</p>
    public let firewallArn: String?
    /// <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    public let firewallName: String?
    /// <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    public let firewallPolicyArn: String?
    /// <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    ///          <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    ///          <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    public let updateToken: String?

    public init (
        firewallArn: String? = nil,
        firewallName: String? = nil,
        firewallPolicyArn: String? = nil,
        updateToken: String? = nil
    )
    {
        self.firewallArn = firewallArn
        self.firewallName = firewallName
        self.firewallPolicyArn = firewallPolicyArn
        self.updateToken = updateToken
    }
}

extension AssociateFirewallPolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateFirewallPolicyOutputResponse(firewallArn: \(String(describing: firewallArn)), firewallName: \(String(describing: firewallName)), firewallPolicyArn: \(String(describing: firewallPolicyArn)), updateToken: \(String(describing: updateToken)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListFirewallDomainListsOutputResponse: Equatable {
    /// <p>A list of the domain lists that you have defined.   </p>
    ///          <p>This might be a partial list of the domain lists that you've defined. For information,
    /// 			see <code>MaxResults</code>. </p>
    public let firewallDomainLists: [FirewallDomainListMetadata]?
    /// <p>If objects are still available for retrieval, Resolver returns this token in the response.
    ///            To retrieve the next batch of objects, provide this token in your next request.</p>
    public let nextToken: String?

    public init (
        firewallDomainLists: [FirewallDomainListMetadata]? = nil,
        nextToken: String? = nil
    )
    {
        self.firewallDomainLists = firewallDomainLists
        self.nextToken = nextToken
    }
}

extension ListFirewallDomainListsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFirewallDomainListsOutputResponse(firewallDomainLists: \(String(describing: firewallDomainLists)), nextToken: \(String(describing: nextToken)))"}
}
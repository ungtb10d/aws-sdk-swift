// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Identifier for a single stateless rule group, used in a firewall policy to refer to the
///          rule group. </p>
public struct StatelessRuleGroupReference: Equatable {
    /// <p>An integer setting that indicates the order in which to run the stateless rule groups in
    ///          a single <a>FirewallPolicy</a>. Network Firewall applies each stateless rule group
    ///          to a packet starting with the group that has the lowest priority setting. You must ensure
    ///          that the priority settings are unique within each policy.</p>
    public let priority: Int
    /// <p>The Amazon Resource Name (ARN) of the stateless rule group.</p>
    public let resourceArn: String?

    public init (
        priority: Int = 0,
        resourceArn: String? = nil
    )
    {
        self.priority = priority
        self.resourceArn = resourceArn
    }
}

extension StatelessRuleGroupReference: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StatelessRuleGroupReference(priority: \(String(describing: priority)), resourceArn: \(String(describing: resourceArn)))"}
}
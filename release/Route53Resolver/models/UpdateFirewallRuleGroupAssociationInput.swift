// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateFirewallRuleGroupAssociationInput: Equatable {
    /// <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    public let firewallRuleGroupAssociationId: String?
    /// <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>
    public let mutationProtection: MutationProtectionStatus?
    /// <p>The name of the rule group association.</p>
    public let name: String?
    /// <p>The setting that determines the processing order of the rule group among the rule
    /// 			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    /// 			starting from the rule group with the lowest numeric priority setting. </p>
    ///          <p>You must specify a unique priority for each rule group that you associate with a single VPC.
    ///            To make it easier to insert rule groups later, leave space between the numbers, for example, use 100, 200, and so on. You
    ///    can change the priority setting for a rule group association after you create it.</p>
    public let priority: Int?

    public init (
        firewallRuleGroupAssociationId: String? = nil,
        mutationProtection: MutationProtectionStatus? = nil,
        name: String? = nil,
        priority: Int? = nil
    )
    {
        self.firewallRuleGroupAssociationId = firewallRuleGroupAssociationId
        self.mutationProtection = mutationProtection
        self.name = name
        self.priority = priority
    }
}

extension UpdateFirewallRuleGroupAssociationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateFirewallRuleGroupAssociationInput(firewallRuleGroupAssociationId: \(String(describing: firewallRuleGroupAssociationId)), mutationProtection: \(String(describing: mutationProtection)), name: \(String(describing: name)), priority: \(String(describing: priority)))"}
}
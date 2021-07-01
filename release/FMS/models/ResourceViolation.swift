// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Violation detail based on resource type.</p>
public struct ResourceViolation: Equatable {
    /// <p>Violation details for an EC2 instance.</p>
    public let awsEc2InstanceViolation: AwsEc2InstanceViolation?
    /// <p>Violation details for network interface.</p>
    public let awsEc2NetworkInterfaceViolation: AwsEc2NetworkInterfaceViolation?
    /// <p>Violation details for security groups.</p>
    public let awsVPCSecurityGroupViolation: AwsVPCSecurityGroupViolation?
    /// <p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
    ///        tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>
    public let dnsDuplicateRuleGroupViolation: DnsDuplicateRuleGroupViolation?
    /// <p>Violation details for a DNS Firewall policy that indicates that the VPC reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed. </p>
    public let dnsRuleGroupLimitExceededViolation: DnsRuleGroupLimitExceededViolation?
    /// <p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
    ///        tried to associate with a VPC has the same priority as a rule group that's already associated. </p>
    public let dnsRuleGroupPriorityConflictViolation: DnsRuleGroupPriorityConflictViolation?
    /// <p>Violation detail for an Network Firewall policy that indicates that a subnet
    ///       is not associated with the expected Firewall Manager managed route table. </p>
    public let networkFirewallMissingExpectedRTViolation: NetworkFirewallMissingExpectedRTViolation?
    /// <p>Violation detail for an Network Firewall policy that indicates that a subnet has no Firewall Manager
    ///         managed firewall in its VPC. </p>
    public let networkFirewallMissingFirewallViolation: NetworkFirewallMissingFirewallViolation?
    /// <p>Violation detail for an Network Firewall policy that indicates that an Availability Zone is
    ///        missing the expected Firewall Manager managed subnet.</p>
    public let networkFirewallMissingSubnetViolation: NetworkFirewallMissingSubnetViolation?
    /// <p>Violation detail for an Network Firewall policy that indicates that a firewall policy
    ///        in an individual account has been modified in a way that makes it noncompliant.
    ///        For example, the individual account owner might have deleted a rule group,
    ///        changed the priority of a stateless rule group, or changed a policy default action.</p>
    public let networkFirewallPolicyModifiedViolation: NetworkFirewallPolicyModifiedViolation?

    public init (
        awsEc2InstanceViolation: AwsEc2InstanceViolation? = nil,
        awsEc2NetworkInterfaceViolation: AwsEc2NetworkInterfaceViolation? = nil,
        awsVPCSecurityGroupViolation: AwsVPCSecurityGroupViolation? = nil,
        dnsDuplicateRuleGroupViolation: DnsDuplicateRuleGroupViolation? = nil,
        dnsRuleGroupLimitExceededViolation: DnsRuleGroupLimitExceededViolation? = nil,
        dnsRuleGroupPriorityConflictViolation: DnsRuleGroupPriorityConflictViolation? = nil,
        networkFirewallMissingExpectedRTViolation: NetworkFirewallMissingExpectedRTViolation? = nil,
        networkFirewallMissingFirewallViolation: NetworkFirewallMissingFirewallViolation? = nil,
        networkFirewallMissingSubnetViolation: NetworkFirewallMissingSubnetViolation? = nil,
        networkFirewallPolicyModifiedViolation: NetworkFirewallPolicyModifiedViolation? = nil
    )
    {
        self.awsEc2InstanceViolation = awsEc2InstanceViolation
        self.awsEc2NetworkInterfaceViolation = awsEc2NetworkInterfaceViolation
        self.awsVPCSecurityGroupViolation = awsVPCSecurityGroupViolation
        self.dnsDuplicateRuleGroupViolation = dnsDuplicateRuleGroupViolation
        self.dnsRuleGroupLimitExceededViolation = dnsRuleGroupLimitExceededViolation
        self.dnsRuleGroupPriorityConflictViolation = dnsRuleGroupPriorityConflictViolation
        self.networkFirewallMissingExpectedRTViolation = networkFirewallMissingExpectedRTViolation
        self.networkFirewallMissingFirewallViolation = networkFirewallMissingFirewallViolation
        self.networkFirewallMissingSubnetViolation = networkFirewallMissingSubnetViolation
        self.networkFirewallPolicyModifiedViolation = networkFirewallPolicyModifiedViolation
    }
}

extension ResourceViolation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceViolation(awsEc2InstanceViolation: \(String(describing: awsEc2InstanceViolation)), awsEc2NetworkInterfaceViolation: \(String(describing: awsEc2NetworkInterfaceViolation)), awsVPCSecurityGroupViolation: \(String(describing: awsVPCSecurityGroupViolation)), dnsDuplicateRuleGroupViolation: \(String(describing: dnsDuplicateRuleGroupViolation)), dnsRuleGroupLimitExceededViolation: \(String(describing: dnsRuleGroupLimitExceededViolation)), dnsRuleGroupPriorityConflictViolation: \(String(describing: dnsRuleGroupPriorityConflictViolation)), networkFirewallMissingExpectedRTViolation: \(String(describing: networkFirewallMissingExpectedRTViolation)), networkFirewallMissingFirewallViolation: \(String(describing: networkFirewallMissingFirewallViolation)), networkFirewallMissingSubnetViolation: \(String(describing: networkFirewallMissingSubnetViolation)), networkFirewallPolicyModifiedViolation: \(String(describing: networkFirewallPolicyModifiedViolation)))"}
}
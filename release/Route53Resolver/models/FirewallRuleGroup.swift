// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>High-level information for a firewall rule group. A firewall rule group is a collection of rules that DNS Firewall uses to filter DNS network traffic for a VPC. To retrieve the rules for the rule group, call <a>ListFirewallRules</a>.</p>
public struct FirewallRuleGroup: Equatable {
    /// <p>The ARN (Amazon Resource Name) of the rule group.</p>
    public let arn: String?
    /// <p>The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC). </p>
    public let creationTime: String?
    /// <p>A unique string defined by you to identify the request. This allows you to retry failed
    /// 			requests without the risk of running the operation twice. This can be any unique string,
    /// 			for example, a timestamp. </p>
    public let creatorRequestId: String?
    /// <p>The ID of the rule group. </p>
    public let id: String?
    /// <p>The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>
    public let modificationTime: String?
    /// <p>The name of the rule group.</p>
    public let name: String?
    /// <p>The AWS account ID for the account that created the rule group. When a rule group is shared with your account,
    ///        this is the account that has shared the rule group with you.  </p>
    public let ownerId: String?
    /// <p>The number of rules in the rule group.</p>
    public let ruleCount: Int?
    /// <p>Whether the rule group is shared with other AWS accounts, or was shared with the current account by another
    ///               AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM).</p>
    public let shareStatus: ShareStatus?
    /// <p>The status of the domain list.  </p>
    public let status: FirewallRuleGroupStatus?
    /// <p>Additional information about the status of the rule group, if available.</p>
    public let statusMessage: String?

    public init (
        arn: String? = nil,
        creationTime: String? = nil,
        creatorRequestId: String? = nil,
        id: String? = nil,
        modificationTime: String? = nil,
        name: String? = nil,
        ownerId: String? = nil,
        ruleCount: Int? = nil,
        shareStatus: ShareStatus? = nil,
        status: FirewallRuleGroupStatus? = nil,
        statusMessage: String? = nil
    )
    {
        self.arn = arn
        self.creationTime = creationTime
        self.creatorRequestId = creatorRequestId
        self.id = id
        self.modificationTime = modificationTime
        self.name = name
        self.ownerId = ownerId
        self.ruleCount = ruleCount
        self.shareStatus = shareStatus
        self.status = status
        self.statusMessage = statusMessage
    }
}

extension FirewallRuleGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FirewallRuleGroup(arn: \(String(describing: arn)), creationTime: \(String(describing: creationTime)), creatorRequestId: \(String(describing: creatorRequestId)), id: \(String(describing: id)), modificationTime: \(String(describing: modificationTime)), name: \(String(describing: name)), ownerId: \(String(describing: ownerId)), ruleCount: \(String(describing: ruleCount)), shareStatus: \(String(describing: shareStatus)), status: \(String(describing: status)), statusMessage: \(String(describing: statusMessage)))"}
}
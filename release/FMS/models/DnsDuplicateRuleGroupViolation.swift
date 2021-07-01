// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A DNS Firewall rule group that Firewall Manager
///        tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>
public struct DnsDuplicateRuleGroupViolation: Equatable {
    /// <p>The ID of the VPC. </p>
    public let violationTarget: String?
    /// <p>A description of the violation that specifies the rule group and VPC.</p>
    public let violationTargetDescription: String?

    public init (
        violationTarget: String? = nil,
        violationTargetDescription: String? = nil
    )
    {
        self.violationTarget = violationTarget
        self.violationTargetDescription = violationTargetDescription
    }
}

extension DnsDuplicateRuleGroupViolation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DnsDuplicateRuleGroupViolation(violationTarget: \(String(describing: violationTarget)), violationTargetDescription: \(String(describing: violationTargetDescription)))"}
}
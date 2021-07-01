// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdatePullRequestApprovalRuleContentOutputResponse: Equatable {
    /// <p>Information about the updated approval rule.</p>
    public let approvalRule: ApprovalRule?

    public init (
        approvalRule: ApprovalRule? = nil
    )
    {
        self.approvalRule = approvalRule
    }
}

extension UpdatePullRequestApprovalRuleContentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdatePullRequestApprovalRuleContentOutputResponse(approvalRule: \(String(describing: approvalRule)))"}
}
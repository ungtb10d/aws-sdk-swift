// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListApprovalRuleTemplatesOutputResponse: Equatable {
    /// <p>The names of all the approval rule templates found in the AWS Region for your AWS account.</p>
    public let approvalRuleTemplateNames: [String]?
    /// <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    public let nextToken: String?

    public init (
        approvalRuleTemplateNames: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.approvalRuleTemplateNames = approvalRuleTemplateNames
        self.nextToken = nextToken
    }
}

extension ListApprovalRuleTemplatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListApprovalRuleTemplatesOutputResponse(approvalRuleTemplateNames: \(String(describing: approvalRuleTemplateNames)), nextToken: \(String(describing: nextToken)))"}
}
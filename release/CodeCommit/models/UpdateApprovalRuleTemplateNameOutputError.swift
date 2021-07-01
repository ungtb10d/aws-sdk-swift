// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateApprovalRuleTemplateNameOutputError: Equatable {
    case approvalRuleTemplateDoesNotExistException(ApprovalRuleTemplateDoesNotExistException)
    case approvalRuleTemplateNameAlreadyExistsException(ApprovalRuleTemplateNameAlreadyExistsException)
    case approvalRuleTemplateNameRequiredException(ApprovalRuleTemplateNameRequiredException)
    case invalidApprovalRuleTemplateNameException(InvalidApprovalRuleTemplateNameException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateUsageReportSubscriptionOutputError: Equatable {
    case invalidAccountStatusException(InvalidAccountStatusException)
    case invalidRoleException(InvalidRoleException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}
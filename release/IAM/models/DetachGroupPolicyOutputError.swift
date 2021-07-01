// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DetachGroupPolicyOutputError: Equatable {
    case invalidInputException(InvalidInputException)
    case limitExceededException(LimitExceededException)
    case noSuchEntityException(NoSuchEntityException)
    case serviceFailureException(ServiceFailureException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateAssessmentTargetOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalException(InternalException)
    case invalidInputException(InvalidInputException)
    case noSuchEntityException(NoSuchEntityException)
    case serviceTemporarilyUnavailableException(ServiceTemporarilyUnavailableException)
    case unknown(UnknownAWSHttpServiceError)
}
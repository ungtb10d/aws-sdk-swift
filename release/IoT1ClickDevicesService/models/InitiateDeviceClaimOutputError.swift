// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum InitiateDeviceClaimOutputError: Equatable {
    case internalFailureException(InternalFailureException)
    case invalidRequestException(InvalidRequestException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AssociateDeviceWithPlacementOutputError: Equatable {
    case internalFailureException(InternalFailureException)
    case invalidRequestException(InvalidRequestException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}
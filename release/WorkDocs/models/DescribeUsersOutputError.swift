// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeUsersOutputError: Equatable {
    case entityNotExistsException(EntityNotExistsException)
    case failedDependencyException(FailedDependencyException)
    case invalidArgumentException(InvalidArgumentException)
    case requestedEntityTooLargeException(RequestedEntityTooLargeException)
    case serviceUnavailableException(ServiceUnavailableException)
    case unauthorizedOperationException(UnauthorizedOperationException)
    case unauthorizedResourceAccessException(UnauthorizedResourceAccessException)
    case unknown(UnknownAWSHttpServiceError)
}
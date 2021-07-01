// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteProjectOutputError: Equatable {
    case concurrentModificationException(ConcurrentModificationException)
    case invalidServiceRoleException(InvalidServiceRoleException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
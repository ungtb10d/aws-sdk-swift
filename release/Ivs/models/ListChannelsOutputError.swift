// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListChannelsOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case conflictException(ConflictException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
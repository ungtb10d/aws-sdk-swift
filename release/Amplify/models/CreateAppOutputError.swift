// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateAppOutputError: Equatable {
    case badRequestException(BadRequestException)
    case dependentServiceFailureException(DependentServiceFailureException)
    case internalFailureException(InternalFailureException)
    case limitExceededException(LimitExceededException)
    case unauthorizedException(UnauthorizedException)
    case unknown(UnknownAWSHttpServiceError)
}
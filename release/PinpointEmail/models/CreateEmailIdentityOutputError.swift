// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateEmailIdentityOutputError: Equatable {
    case badRequestException(BadRequestException)
    case concurrentModificationException(ConcurrentModificationException)
    case limitExceededException(LimitExceededException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}
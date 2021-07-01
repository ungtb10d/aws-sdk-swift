// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ScheduleRunOutputError: Equatable {
    case argumentException(ArgumentException)
    case idempotencyException(IdempotencyException)
    case limitExceededException(LimitExceededException)
    case notFoundException(NotFoundException)
    case serviceAccountException(ServiceAccountException)
    case unknown(UnknownAWSHttpServiceError)
}
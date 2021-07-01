// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateScheduleOutputError: Equatable {
    case conflictException(ConflictException)
    case serviceQuotaExceededException(ServiceQuotaExceededException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}
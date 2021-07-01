// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateInstanceOutputError: Equatable {
    case internalServiceException(InternalServiceException)
    case invalidRequestException(InvalidRequestException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceQuotaExceededException(ServiceQuotaExceededException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}
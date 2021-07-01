// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateInfrastructureConfigurationOutputError: Equatable {
    case callRateLimitExceededException(CallRateLimitExceededException)
    case clientException(ClientException)
    case forbiddenException(ForbiddenException)
    case idempotentParameterMismatchException(IdempotentParameterMismatchException)
    case invalidRequestException(InvalidRequestException)
    case resourceAlreadyExistsException(ResourceAlreadyExistsException)
    case resourceInUseException(ResourceInUseException)
    case serviceException(ServiceException)
    case serviceQuotaExceededException(ServiceQuotaExceededException)
    case serviceUnavailableException(ServiceUnavailableException)
    case unknown(UnknownAWSHttpServiceError)
}
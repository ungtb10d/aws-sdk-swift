// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RotateIngestEndpointCredentialsOutputError: Equatable {
    case forbiddenException(ForbiddenException)
    case internalServerErrorException(InternalServerErrorException)
    case notFoundException(NotFoundException)
    case serviceUnavailableException(ServiceUnavailableException)
    case tooManyRequestsException(TooManyRequestsException)
    case unprocessableEntityException(UnprocessableEntityException)
    case unknown(UnknownAWSHttpServiceError)
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateMultiplexProgramOutputError: Equatable {
    case badGatewayException(BadGatewayException)
    case badRequestException(BadRequestException)
    case conflictException(ConflictException)
    case forbiddenException(ForbiddenException)
    case gatewayTimeoutException(GatewayTimeoutException)
    case internalServerErrorException(InternalServerErrorException)
    case notFoundException(NotFoundException)
    case unprocessableEntityException(UnprocessableEntityException)
    case unknown(UnknownAWSHttpServiceError)
}
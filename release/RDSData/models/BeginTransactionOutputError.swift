// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum BeginTransactionOutputError: Equatable {
    case badRequestException(BadRequestException)
    case forbiddenException(ForbiddenException)
    case internalServerErrorException(InternalServerErrorException)
    case serviceUnavailableError(ServiceUnavailableError)
    case statementTimeoutException(StatementTimeoutException)
    case unknown(UnknownAWSHttpServiceError)
}
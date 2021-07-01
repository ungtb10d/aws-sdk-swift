// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension UpdateDocumentOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension UpdateDocumentOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ConcurrentModificationException" : self = .concurrentModificationException(try ConcurrentModificationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ConflictingOperationException" : self = .conflictingOperationException(try ConflictingOperationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EntityAlreadyExistsException" : self = .entityAlreadyExistsException(try EntityAlreadyExistsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EntityNotExistsException" : self = .entityNotExistsException(try EntityNotExistsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "FailedDependencyException" : self = .failedDependencyException(try FailedDependencyException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededException" : self = .limitExceededException(try LimitExceededException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ProhibitedStateException" : self = .prohibitedStateException(try ProhibitedStateException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceUnavailableException" : self = .serviceUnavailableException(try ServiceUnavailableException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnauthorizedOperationException" : self = .unauthorizedOperationException(try UnauthorizedOperationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnauthorizedResourceAccessException" : self = .unauthorizedResourceAccessException(try UnauthorizedResourceAccessException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
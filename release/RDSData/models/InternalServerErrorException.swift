// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An internal error occurred.</p>
public struct InternalServerErrorException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .server

    public init() {}
}

extension InternalServerErrorException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InternalServerErrorException()"}
}
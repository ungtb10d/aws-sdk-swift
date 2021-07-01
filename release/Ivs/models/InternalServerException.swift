// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct InternalServerException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .server
    /// <p>Unexpected error during processing of request.</p>
    public var exceptionMessage: String?

    public init (
        exceptionMessage: String? = nil
    )
    {
        self.exceptionMessage = exceptionMessage
    }
}

extension InternalServerException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InternalServerException(exceptionMessage: \(String(describing: exceptionMessage)))"}
}
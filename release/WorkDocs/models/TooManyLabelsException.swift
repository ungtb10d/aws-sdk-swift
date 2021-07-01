// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The limit has been reached on the number of labels for the specified
///             resource.</p>
public struct TooManyLabelsException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension TooManyLabelsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TooManyLabelsException(message: \(String(describing: message)))"}
}
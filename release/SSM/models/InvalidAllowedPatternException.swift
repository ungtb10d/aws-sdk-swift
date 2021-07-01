// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request does not meet the regular expression requirement.</p>
public struct InvalidAllowedPatternException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The request does not meet the regular expression requirement.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension InvalidAllowedPatternException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidAllowedPatternException(message: \(String(describing: message)))"}
}
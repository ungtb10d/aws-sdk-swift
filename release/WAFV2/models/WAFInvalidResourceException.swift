// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>AWS WAF couldn’t perform the operation because the resource that you requested isn’t valid. Check the resource, and try again.</p>
public struct WAFInvalidResourceException: ClientRuntime.ServiceError, Equatable {
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

extension WAFInvalidResourceException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WAFInvalidResourceException(message: \(String(describing: message)))"}
}
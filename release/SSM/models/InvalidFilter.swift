// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The filter name is not valid. Verify the you entered the correct name and try again.</p>
public struct InvalidFilter: ClientRuntime.ServiceError, Equatable {
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

extension InvalidFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidFilter(message: \(String(describing: message)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Outbound calls to the destination number are not allowed.</p>
public struct DestinationNotAllowedException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message about the outbound calls.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension DestinationNotAllowedException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DestinationNotAllowedException(message: \(String(describing: message)))"}
}
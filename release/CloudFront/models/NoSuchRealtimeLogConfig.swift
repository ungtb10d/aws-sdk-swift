// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The real-time log configuration does not exist.</p>
public struct NoSuchRealtimeLogConfig: ClientRuntime.ServiceError, Equatable {
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

extension NoSuchRealtimeLogConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NoSuchRealtimeLogConfig(message: \(String(describing: message)))"}
}
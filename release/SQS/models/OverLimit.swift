// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified action violates a limit. For example, <code>ReceiveMessage</code>
///             returns this error if the maximum number of inflight messages is reached and
///                 <code>AddPermission</code> returns this error if the maximum number of permissions
///             for the queue is reached.</p>
public struct OverLimit: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client

    public init() {}
}

extension OverLimit: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OverLimit()"}
}
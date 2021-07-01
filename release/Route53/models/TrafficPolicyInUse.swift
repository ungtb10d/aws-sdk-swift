// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>One or more traffic policy instances were created by using the specified traffic policy.</p>
public struct TrafficPolicyInUse: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p></p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension TrafficPolicyInUse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TrafficPolicyInUse(message: \(String(describing: message)))"}
}
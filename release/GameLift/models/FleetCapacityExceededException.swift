// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified fleet has no available instances to fulfill a
///                 <code>CreateGameSession</code> request. Clients can retry such requests immediately
///             or after a waiting period.</p>
public struct FleetCapacityExceededException: ClientRuntime.ServiceError, Equatable {
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

extension FleetCapacityExceededException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FleetCapacityExceededException(message: \(String(describing: message)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The configuration for a resource isn't valid. A resource must either be able to
///          auto-respond to requests or have at least one delegate associated that can do so on its
///          behalf.</p>
public struct InvalidConfigurationException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidConfigurationException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidConfigurationException(message: \(String(describing: message)))"}
}
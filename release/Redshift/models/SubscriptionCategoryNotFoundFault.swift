// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The value specified for the event category was not one of the allowed values, or it
///             specified a category that does not apply to the specified source type. The allowed
///             values are Configuration, Management, Monitoring, and Security.</p>
public struct SubscriptionCategoryNotFoundFault: ClientRuntime.ServiceError, Equatable {
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

extension SubscriptionCategoryNotFoundFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SubscriptionCategoryNotFoundFault(message: \(String(describing: message)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The operation was not successful. Try again.</p>
public struct TagOperationException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?
    public var resourceName: String?

    public init (
        message: String? = nil,
        resourceName: String? = nil
    )
    {
        self.message = message
        self.resourceName = resourceName
    }
}

extension TagOperationException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagOperationException(message: \(String(describing: message)), resourceName: \(String(describing: resourceName)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The resource specified for the tagging operation is not a resource type owned by
///             Amazon FSx. Use the API of the relevant service to perform the operation. </p>
public struct NotServiceResourceError: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>A detailed error message.</p>
    public var message: String?
    /// <p>The Amazon Resource Name (ARN) of the non-Amazon FSx resource.</p>
    public var resourceARN: String?

    public init (
        message: String? = nil,
        resourceARN: String? = nil
    )
    {
        self.message = message
        self.resourceARN = resourceARN
    }
}

extension NotServiceResourceError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotServiceResourceError(message: \(String(describing: message)), resourceARN: \(String(describing: resourceARN)))"}
}
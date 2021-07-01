// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You can't perform this action because a dependency does not have access.</p>
public struct DependencyAccessDeniedException: ClientRuntime.ServiceError, Equatable {
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

extension DependencyAccessDeniedException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DependencyAccessDeniedException(message: \(String(describing: message)))"}
}
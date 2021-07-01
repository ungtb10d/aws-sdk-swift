// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The user group was not found or does not exist</p>
public struct UserGroupNotFoundFault: ClientRuntime.ServiceError, Equatable {
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

extension UserGroupNotFoundFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UserGroupNotFoundFault(message: \(String(describing: message)))"}
}
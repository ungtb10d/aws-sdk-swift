// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>No IAM ARN was included in the request. You must use an IAM session ARN or IAM user
///             ARN in the request.</p>
public struct IamArnRequiredException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message that corresponds to the exception thrown by AWS CodeDeploy.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension IamArnRequiredException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IamArnRequiredException(message: \(String(describing: message)))"}
}
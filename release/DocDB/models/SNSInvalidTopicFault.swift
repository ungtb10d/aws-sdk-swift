// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Amazon SNS has responded that there is a problem with the specified topic. </p>
public struct SNSInvalidTopicFault: ClientRuntime.ServiceError, Equatable {
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

extension SNSInvalidTopicFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SNSInvalidTopicFault(message: \(String(describing: message)))"}
}
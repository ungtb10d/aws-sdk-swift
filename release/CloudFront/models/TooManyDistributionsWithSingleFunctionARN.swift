// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The maximum number of distributions have been associated with the specified Lambda
/// 			function.</p>
public struct TooManyDistributionsWithSingleFunctionARN: ClientRuntime.ServiceError, Equatable {
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

extension TooManyDistributionsWithSingleFunctionARN: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TooManyDistributionsWithSingleFunctionARN(message: \(String(describing: message)))"}
}
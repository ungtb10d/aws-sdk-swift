// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p> Indicates you do not have decrypt permissions with the KMS key entered, or the KMS key
///         was entered incorrectly. </p>
public struct InvalidKMSKeyException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var code: String?
    public var message: String?

    public init (
        code: String? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension InvalidKMSKeyException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidKMSKeyException(code: \(String(describing: code)), message: \(String(describing: message)))"}
}
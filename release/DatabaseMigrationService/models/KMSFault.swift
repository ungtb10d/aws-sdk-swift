// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An AWS Key Management Service (AWS KMS) error is preventing access to AWS KMS.</p>
public struct KMSFault: ClientRuntime.ServiceError, Equatable {
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

extension KMSFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KMSFault(message: \(String(describing: message)))"}
}
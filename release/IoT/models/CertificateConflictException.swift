// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Unable to verify the CA certificate used to sign the device certificate you are
///          attempting to register. This is happens when you have registered more than one CA
///          certificate that has the same subject field and public key.</p>
public struct CertificateConflictException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message for the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension CertificateConflictException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CertificateConflictException(message: \(String(describing: message)))"}
}
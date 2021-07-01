// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The upload could not be found, or the specified upload ID is not valid for this
///             repository.</p>
public struct UploadNotFoundException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The error message associated with the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension UploadNotFoundException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UploadNotFoundException(message: \(String(describing: message)))"}
}
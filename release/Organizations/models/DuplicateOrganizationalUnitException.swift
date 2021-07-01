// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An OU with the same name already exists.</p>
public struct DuplicateOrganizationalUnitException: ClientRuntime.ServiceError, Equatable {
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

extension DuplicateOrganizationalUnitException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DuplicateOrganizationalUnitException(message: \(String(describing: message)))"}
}
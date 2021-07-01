// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>This exception is thrown when the <code>UpdatServer</code> is called for a file transfer
///       protocol-enabled server that has VPC as the endpoint type and the server's
///         <code>VpcEndpointID</code> is not in the available state.</p>
public struct ConflictException: ClientRuntime.ServiceError, Equatable {
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

extension ConflictException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConflictException(message: \(String(describing: message)))"}
}
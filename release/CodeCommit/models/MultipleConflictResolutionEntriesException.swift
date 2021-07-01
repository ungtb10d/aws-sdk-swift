// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>More than one conflict resolution entries exists for the conflict. A conflict can have only one conflict resolution entry.</p>
public struct MultipleConflictResolutionEntriesException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>Any message associated with the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension MultipleConflictResolutionEntriesException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MultipleConflictResolutionEntriesException(message: \(String(describing: message)))"}
}
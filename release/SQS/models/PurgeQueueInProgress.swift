// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>
public struct PurgeQueueInProgress: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client

    public init() {}
}

extension PurgeQueueInProgress: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PurgeQueueInProgress()"}
}
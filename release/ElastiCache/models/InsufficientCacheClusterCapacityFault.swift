// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The requested cache node type is not available in the specified Availability Zone.
///             For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY">InsufficientCacheClusterCapacity</a> in the ElastiCache User Guide.</p>
public struct InsufficientCacheClusterCapacityFault: ClientRuntime.ServiceError, Equatable {
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

extension InsufficientCacheClusterCapacityFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InsufficientCacheClusterCapacityFault(message: \(String(describing: message)))"}
}
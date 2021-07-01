// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBucketAnalyticsConfigurationsInput: Equatable {
    /// <p>The name of the bucket from which analytics configurations are retrieved.</p>
    public let bucket: String?
    /// <p>The ContinuationToken that represents a placeholder from where this request should
    ///          begin.</p>
    public let continuationToken: String?
    /// <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>
    public let expectedBucketOwner: String?

    public init (
        bucket: String? = nil,
        continuationToken: String? = nil,
        expectedBucketOwner: String? = nil
    )
    {
        self.bucket = bucket
        self.continuationToken = continuationToken
        self.expectedBucketOwner = expectedBucketOwner
    }
}

extension ListBucketAnalyticsConfigurationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBucketAnalyticsConfigurationsInput(bucket: \(String(describing: bucket)), continuationToken: \(String(describing: continuationToken)), expectedBucketOwner: \(String(describing: expectedBucketOwner)))"}
}
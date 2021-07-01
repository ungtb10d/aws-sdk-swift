// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBucketAccelerateConfigurationInput: Equatable {
    /// <p>The name of the bucket for which the accelerate configuration is retrieved.</p>
    public let bucket: String?
    /// <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP <code>403 (Access Denied)</code> error.</p>
    public let expectedBucketOwner: String?

    public init (
        bucket: String? = nil,
        expectedBucketOwner: String? = nil
    )
    {
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
    }
}

extension GetBucketAccelerateConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetBucketAccelerateConfigurationInput(bucket: \(String(describing: bucket)), expectedBucketOwner: \(String(describing: expectedBucketOwner)))"}
}
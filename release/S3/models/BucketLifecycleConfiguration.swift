// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more
///          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle Management</a>
///          in the <i>Amazon S3 User Guide</i>.</p>
public struct BucketLifecycleConfiguration: Equatable {
    /// <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    public let rules: [LifecycleRule]?

    public init (
        rules: [LifecycleRule]? = nil
    )
    {
        self.rules = rules
    }
}

extension BucketLifecycleConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BucketLifecycleConfiguration(rules: \(String(describing: rules)))"}
}
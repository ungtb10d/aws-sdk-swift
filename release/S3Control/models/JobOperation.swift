// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The operation that you want this job to perform on every object listed in the manifest.
///          For more information about the available operations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html">Operations</a> in the
///             <i>Amazon S3 User Guide</i>.</p>
public struct JobOperation: Equatable {
    /// <p>Directs the specified job to invoke an AWS Lambda function on every object in the manifest.</p>
    public let lambdaInvoke: LambdaInvokeOperation?
    /// <p>Directs the specified job to execute a DELETE Object tagging call on every object in the manifest.</p>
    public let s3DeleteObjectTagging: S3DeleteObjectTaggingOperation?
    /// <p>Directs the specified job to initiate restore requests for every archived object in the manifest.</p>
    public let s3InitiateRestoreObject: S3InitiateRestoreObjectOperation?
    /// <p>Directs the specified job to run a PUT Object acl call on every object in the manifest.</p>
    public let s3PutObjectAcl: S3SetObjectAclOperation?
    /// <p>Directs the specified job to run a PUT Copy object call on every object in the manifest.</p>
    public let s3PutObjectCopy: S3CopyObjectOperation?
    /// <p>Contains the configuration for an S3 Object Lock legal hold operation that an
    ///          S3 Batch Operations job passes every object to the underlying
    ///             <code>PutObjectLegalHold</code> API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html">Using
    ///             S3 Object Lock legal hold with S3 Batch Operations</a> in the
    ///             <i>Amazon S3 User Guide</i>.</p>
    public let s3PutObjectLegalHold: S3SetObjectLegalHoldOperation?
    /// <p>Contains the configuration parameters for the Object Lock retention action for an
    ///          S3 Batch Operations job. Batch Operations passes every object to the underlying
    ///             <code>PutObjectRetention</code> API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using
    ///             S3 Object Lock retention with S3 Batch Operations</a> in the
    ///             <i>Amazon S3 User Guide</i>.</p>
    public let s3PutObjectRetention: S3SetObjectRetentionOperation?
    /// <p>Directs the specified job to run a PUT Object tagging call on every object in the manifest.</p>
    public let s3PutObjectTagging: S3SetObjectTaggingOperation?

    public init (
        lambdaInvoke: LambdaInvokeOperation? = nil,
        s3DeleteObjectTagging: S3DeleteObjectTaggingOperation? = nil,
        s3InitiateRestoreObject: S3InitiateRestoreObjectOperation? = nil,
        s3PutObjectAcl: S3SetObjectAclOperation? = nil,
        s3PutObjectCopy: S3CopyObjectOperation? = nil,
        s3PutObjectLegalHold: S3SetObjectLegalHoldOperation? = nil,
        s3PutObjectRetention: S3SetObjectRetentionOperation? = nil,
        s3PutObjectTagging: S3SetObjectTaggingOperation? = nil
    )
    {
        self.lambdaInvoke = lambdaInvoke
        self.s3DeleteObjectTagging = s3DeleteObjectTagging
        self.s3InitiateRestoreObject = s3InitiateRestoreObject
        self.s3PutObjectAcl = s3PutObjectAcl
        self.s3PutObjectCopy = s3PutObjectCopy
        self.s3PutObjectLegalHold = s3PutObjectLegalHold
        self.s3PutObjectRetention = s3PutObjectRetention
        self.s3PutObjectTagging = s3PutObjectTagging
    }
}

extension JobOperation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobOperation(lambdaInvoke: \(String(describing: lambdaInvoke)), s3DeleteObjectTagging: \(String(describing: s3DeleteObjectTagging)), s3InitiateRestoreObject: \(String(describing: s3InitiateRestoreObject)), s3PutObjectAcl: \(String(describing: s3PutObjectAcl)), s3PutObjectCopy: \(String(describing: s3PutObjectCopy)), s3PutObjectLegalHold: \(String(describing: s3PutObjectLegalHold)), s3PutObjectRetention: \(String(describing: s3PutObjectRetention)), s3PutObjectTagging: \(String(describing: s3PutObjectTagging)))"}
}
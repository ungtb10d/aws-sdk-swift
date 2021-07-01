// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about the default server-side encryption settings for an S3 bucket. For detailed information about these settings, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html">Setting default server-side encryption behavior for Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
public struct BucketServerSideEncryption: Equatable {
    /// <p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the AWS Key Management Service (AWS KMS) customer master key (CMK) that's used by default to encrypt objects that are added to the bucket. This value is null if the bucket uses an Amazon S3 managed key to encrypt new objects or the bucket doesn't encrypt new objects by default.</p>
    public let kmsMasterKeyId: String?
    /// <p>The type of server-side encryption that's used by default when storing new objects in the bucket. Possible values are:</p> <ul><li><p>AES256 - New objects are encrypted with an Amazon S3 managed key and use Amazon S3 managed encryption (SSE-S3).</p></li> <li><p>aws:kms - New objects are encrypted with an AWS KMS CMK, specified by the kmsMasterKeyId property, and use AWS managed AWS KMS encryption (AWS-KMS) or customer managed AWS KMS encryption (SSE-KMS).</p></li> <li><p>NONE - New objects aren't encrypted by default. Default encryption is disabled for the bucket.</p></li></ul>
    public let type: `Type`?

    public init (
        kmsMasterKeyId: String? = nil,
        type: `Type`? = nil
    )
    {
        self.kmsMasterKeyId = kmsMasterKeyId
        self.type = type
    }
}

extension BucketServerSideEncryption: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BucketServerSideEncryption(kmsMasterKeyId: \(String(describing: kmsMasterKeyId)), type: \(String(describing: type)))"}
}
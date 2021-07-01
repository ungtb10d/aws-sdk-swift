// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UploadPartOutputResponse: Equatable {
    /// <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).</p>
    public let bucketKeyEnabled: Bool
    /// <p>Entity tag for the uploaded object.</p>
    public let eTag: String?
    /// <p>If present, indicates that the requester was successfully charged for the
    ///          request.</p>
    public let requestCharged: RequestCharged?
    /// <p>If server-side encryption with a customer-provided encryption key was requested, the
    ///          response will include this header confirming the encryption algorithm used.</p>
    public let sSECustomerAlgorithm: String?
    /// <p>If server-side encryption with a customer-provided encryption key was requested, the
    ///          response will include this header to provide round-trip message integrity verification of
    ///          the customer-provided encryption key.</p>
    public let sSECustomerKeyMD5: String?
    /// <p>If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
    ///          customer managed customer master key (CMK) was used for the object.</p>
    public let sSEKMSKeyId: String?
    /// <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    ///          AES256, aws:kms).</p>
    public let serverSideEncryption: ServerSideEncryption?

    public init (
        bucketKeyEnabled: Bool = false,
        eTag: String? = nil,
        requestCharged: RequestCharged? = nil,
        sSECustomerAlgorithm: String? = nil,
        sSECustomerKeyMD5: String? = nil,
        sSEKMSKeyId: String? = nil,
        serverSideEncryption: ServerSideEncryption? = nil
    )
    {
        self.bucketKeyEnabled = bucketKeyEnabled
        self.eTag = eTag
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
    }
}

extension UploadPartOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UploadPartOutputResponse(bucketKeyEnabled: \(String(describing: bucketKeyEnabled)), eTag: \(String(describing: eTag)), requestCharged: \(String(describing: requestCharged)), sSECustomerAlgorithm: \(String(describing: sSECustomerAlgorithm)), sSECustomerKeyMD5: \(String(describing: sSECustomerKeyMD5)), sSEKMSKeyId: \(String(describing: sSEKMSKeyId)), serverSideEncryption: \(String(describing: serverSideEncryption)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides options to upload a part of an archive in a multipart upload
///          operation.</p>
public struct UploadMultipartPartInput: Equatable {
    /// <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    ///          vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    ///          (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    ///          credentials used to sign the request. If you use an account ID, do not include any hyphens
    ///          ('-') in the ID. </p>
    public let accountId: String?
    /// <p>The data to upload.</p>
    public let body: Data?
    /// <p>The SHA256 tree hash of the data being uploaded.</p>
    public let checksum: String?
    /// <p>Identifies the range of bytes in the assembled archive that will be uploaded in this
    ///          part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence.
    ///          The format of this header follows RFC 2616. An example header is Content-Range:bytes
    ///          0-4194303/*.</p>
    public let range: String?
    /// <p>The upload ID of the multipart upload.</p>
    public let uploadId: String?
    /// <p>The name of the vault.</p>
    public let vaultName: String?

    public init (
        accountId: String? = nil,
        body: Data? = nil,
        checksum: String? = nil,
        range: String? = nil,
        uploadId: String? = nil,
        vaultName: String? = nil
    )
    {
        self.accountId = accountId
        self.body = body
        self.checksum = checksum
        self.range = range
        self.uploadId = uploadId
        self.vaultName = vaultName
    }
}

extension UploadMultipartPartInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UploadMultipartPartInput(accountId: \(String(describing: accountId)), body: \(String(describing: body)), checksum: \(String(describing: checksum)), range: \(String(describing: range)), uploadId: \(String(describing: uploadId)), vaultName: \(String(describing: vaultName)))"}
}
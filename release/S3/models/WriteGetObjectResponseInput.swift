// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct WriteGetObjectResponseInput: Equatable {
    /// <p>Indicates that a range of bytes was specified.</p>
    public let acceptRanges: String?
    /// <p>The object data.</p>
    public let body: Data?
    /// <p> Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side
    ///          encryption with AWS KMS (SSE-KMS).</p>
    public let bucketKeyEnabled: Bool
    /// <p>Specifies caching behavior along the request/reply chain.</p>
    public let cacheControl: String?
    /// <p>Specifies presentational information for the object.</p>
    public let contentDisposition: String?
    /// <p>Specifies what content encodings have been applied to the object and thus what decoding
    ///           mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    ///           field.</p>
    public let contentEncoding: String?
    /// <p>The language the content is in.</p>
    public let contentLanguage: String?
    /// <p>The size of the content body in bytes.</p>
    public let contentLength: Int
    /// <p>The portion of the object returned in the response.</p>
    public let contentRange: String?
    /// <p>A standard MIME type describing the format of the object data.</p>
    public let contentType: String?
    /// <p>Specifies whether an object stored in Amazon S3 is (<code>true</code>) or is not
    ///             (<code>false</code>) a delete marker. </p>
    public let deleteMarker: Bool
    /// <p>An opaque identifier assigned by a web server to a specific version of a resource found
    ///          at a URL. </p>
    public let eTag: String?
    /// <p>A string that uniquely identifies an error condition. Returned in the <Code> tag
    ///          of the error XML response for a corresponding <code>GetObject</code> call. Cannot be used
    ///          with a successful <code>StatusCode</code> header or when the transformed object is provided
    ///           in the body. All error codes from S3 are sentence-cased. Regex value is "^[A-Z][a-zA-Z]+$".</p>
    public let errorCode: String?
    /// <p>Contains a generic description of the error condition. Returned in the <Message>
    ///          tag of the error XML response for a corresponding <code>GetObject</code> call. Cannot be
    ///          used with a successful <code>StatusCode</code> header or when the transformed object is
    ///          provided in body.</p>
    public let errorMessage: String?
    /// <p>If object stored in Amazon S3 expiration is configured (see PUT Bucket lifecycle) it includes expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL encoded. </p>
    public let expiration: String?
    /// <p>The date and time at which the object is no longer cacheable.</p>
    public let expires: Date?
    /// <p>The date and time that the object was last modified.</p>
    public let lastModified: Date?
    /// <p>A map of metadata to store with the object in S3.</p>
    public let metadata: [String:String]?
    /// <p>Set to the number of metadata entries not returned in <code>x-amz-meta</code> headers.
    ///          This can happen if you create metadata using an API like SOAP that supports more flexible
    ///          metadata than the REST API. For example, using SOAP, you can create metadata whose values
    ///          are not legal HTTP headers.</p>
    public let missingMeta: Int
    /// <p>Indicates whether an object stored in Amazon S3 has an active legal hold.</p>
    public let objectLockLegalHoldStatus: ObjectLockLegalHoldStatus?
    /// <p>Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more
    ///           information about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object Lock</a>.</p>
    public let objectLockMode: ObjectLockMode?
    /// <p>The date and time when Object Lock is configured to expire.</p>
    public let objectLockRetainUntilDate: Date?
    /// <p>The count of parts this object has.</p>
    public let partsCount: Int
    /// <p>Indicates if request involves bucket that is either a source or destination in a Replication rule. For more
    ///           information about S3 Replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html">Replication</a>.</p>
    public let replicationStatus: ReplicationStatus?
    /// <p>If present, indicates that the requester was successfully charged for the
    ///          request.</p>
    public let requestCharged: RequestCharged?
    /// <p>Route prefix to the HTTP URL generated.</p>
    public let requestRoute: String?
    /// <p>A single use encrypted token that maps <code>WriteGetObjectResponse</code> to the end
    ///          user <code>GetObject</code> request.</p>
    public let requestToken: String?
    /// <p>Provides information about object restoration operation and expiration time of the
    ///           restored object copy.</p>
    public let restore: String?
    /// <p>Encryption algorithm used if server-side encryption with a customer-provided encryption key was specified for object stored in Amazon S3.</p>
    public let sSECustomerAlgorithm: String?
    /// <p> 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data
    ///          stored in S3. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting data
    ///             using server-side encryption with customer-provided encryption keys
    ///          (SSE-C)</a>.</p>
    public let sSECustomerKeyMD5: String?
    /// <p> If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for stored in Amazon S3 object. </p>
    public let sSEKMSKeyId: String?
    /// <p> The server-side encryption algorithm used when storing requested object in Amazon S3 (for example, AES256, aws:kms).</p>
    public let serverSideEncryption: ServerSideEncryption?
    /// <p>The integer status code for an HTTP response of a corresponding <code>GetObject</code>
    ///          request.</p>
    ///              <p class="title">
    ///             <b>Status Codes</b>
    ///          </p>
    ///          <ul>
    ///             <li>
    ///                    <p>
    ///                   <i>200 - OK</i>
    ///                </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>206 - Partial Content</i>
    ///                </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>304 - Not Modified</i>
    ///                </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>400 - Bad Request</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>401 - Unauthorized</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>403 - Forbidden</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>404 - Not Found</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>405 - Method Not Allowed</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>409 - Conflict</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>411 - Length Required</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>412 - Precondition Failed</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>416 - Range Not Satisfiable</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>500 - Internal Server Error</i>
    ///                    </p>
    ///                 </li>
    ///             <li>
    ///                    <p>
    ///                   <i>503 - Service Unavailable</i>
    ///                    </p>
    ///                 </li>
    ///          </ul>
    public let statusCode: Int
    /// <p> The class of storage used to store object in Amazon S3.</p>
    public let storageClass: StorageClass?
    /// <p>The number of tags, if any, on the object.</p>
    public let tagCount: Int
    /// <p>An ID used to reference a specific version of the object.</p>
    public let versionId: String?

    public init (
        acceptRanges: String? = nil,
        body: Data? = nil,
        bucketKeyEnabled: Bool = false,
        cacheControl: String? = nil,
        contentDisposition: String? = nil,
        contentEncoding: String? = nil,
        contentLanguage: String? = nil,
        contentLength: Int = 0,
        contentRange: String? = nil,
        contentType: String? = nil,
        deleteMarker: Bool = false,
        eTag: String? = nil,
        errorCode: String? = nil,
        errorMessage: String? = nil,
        expiration: String? = nil,
        expires: Date? = nil,
        lastModified: Date? = nil,
        metadata: [String:String]? = nil,
        missingMeta: Int = 0,
        objectLockLegalHoldStatus: ObjectLockLegalHoldStatus? = nil,
        objectLockMode: ObjectLockMode? = nil,
        objectLockRetainUntilDate: Date? = nil,
        partsCount: Int = 0,
        replicationStatus: ReplicationStatus? = nil,
        requestCharged: RequestCharged? = nil,
        requestRoute: String? = nil,
        requestToken: String? = nil,
        restore: String? = nil,
        sSECustomerAlgorithm: String? = nil,
        sSECustomerKeyMD5: String? = nil,
        sSEKMSKeyId: String? = nil,
        serverSideEncryption: ServerSideEncryption? = nil,
        statusCode: Int = 0,
        storageClass: StorageClass? = nil,
        tagCount: Int = 0,
        versionId: String? = nil
    )
    {
        self.acceptRanges = acceptRanges
        self.body = body
        self.bucketKeyEnabled = bucketKeyEnabled
        self.cacheControl = cacheControl
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentLength = contentLength
        self.contentRange = contentRange
        self.contentType = contentType
        self.deleteMarker = deleteMarker
        self.eTag = eTag
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.expiration = expiration
        self.expires = expires
        self.lastModified = lastModified
        self.metadata = metadata
        self.missingMeta = missingMeta
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.partsCount = partsCount
        self.replicationStatus = replicationStatus
        self.requestCharged = requestCharged
        self.requestRoute = requestRoute
        self.requestToken = requestToken
        self.restore = restore
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.statusCode = statusCode
        self.storageClass = storageClass
        self.tagCount = tagCount
        self.versionId = versionId
    }
}

extension WriteGetObjectResponseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WriteGetObjectResponseInput(acceptRanges: \(String(describing: acceptRanges)), body: \(String(describing: body)), bucketKeyEnabled: \(String(describing: bucketKeyEnabled)), cacheControl: \(String(describing: cacheControl)), contentDisposition: \(String(describing: contentDisposition)), contentEncoding: \(String(describing: contentEncoding)), contentLanguage: \(String(describing: contentLanguage)), contentLength: \(String(describing: contentLength)), contentRange: \(String(describing: contentRange)), contentType: \(String(describing: contentType)), deleteMarker: \(String(describing: deleteMarker)), eTag: \(String(describing: eTag)), errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), expiration: \(String(describing: expiration)), expires: \(String(describing: expires)), lastModified: \(String(describing: lastModified)), metadata: \(String(describing: metadata)), missingMeta: \(String(describing: missingMeta)), objectLockLegalHoldStatus: \(String(describing: objectLockLegalHoldStatus)), objectLockMode: \(String(describing: objectLockMode)), objectLockRetainUntilDate: \(String(describing: objectLockRetainUntilDate)), partsCount: \(String(describing: partsCount)), replicationStatus: \(String(describing: replicationStatus)), requestCharged: \(String(describing: requestCharged)), requestRoute: \(String(describing: requestRoute)), requestToken: \(String(describing: requestToken)), restore: \(String(describing: restore)), sSECustomerAlgorithm: \(String(describing: sSECustomerAlgorithm)), sSECustomerKeyMD5: \(String(describing: sSECustomerKeyMD5)), sSEKMSKeyId: \(String(describing: sSEKMSKeyId)), serverSideEncryption: \(String(describing: serverSideEncryption)), statusCode: \(String(describing: statusCode)), storageClass: \(String(describing: storageClass)), tagCount: \(String(describing: tagCount)), versionId: \(String(describing: versionId)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains information on the S3 bucket.</p>
public struct S3BucketDetail: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    public let arn: String?
    /// <p>The date and time the bucket was created at.</p>
    public let createdAt: Date?
    /// <p>Describes the server side encryption method used in the S3 bucket.</p>
    public let defaultServerSideEncryption: DefaultServerSideEncryption?
    /// <p>The name of the S3 bucket.</p>
    public let name: String?
    /// <p>The owner of the S3 bucket.</p>
    public let owner: Owner?
    /// <p>Describes the public access policies that apply to the S3 bucket.</p>
    public let publicAccess: PublicAccess?
    /// <p>All tags attached to the S3 bucket</p>
    public let tags: [Tag]?
    /// <p>Describes whether the bucket is a source or destination bucket.</p>
    public let type: String?

    public init (
        arn: String? = nil,
        createdAt: Date? = nil,
        defaultServerSideEncryption: DefaultServerSideEncryption? = nil,
        name: String? = nil,
        owner: Owner? = nil,
        publicAccess: PublicAccess? = nil,
        tags: [Tag]? = nil,
        type: String? = nil
    )
    {
        self.arn = arn
        self.createdAt = createdAt
        self.defaultServerSideEncryption = defaultServerSideEncryption
        self.name = name
        self.owner = owner
        self.publicAccess = publicAccess
        self.tags = tags
        self.type = type
    }
}

extension S3BucketDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3BucketDetail(arn: \(String(describing: arn)), createdAt: \(String(describing: createdAt)), defaultServerSideEncryption: \(String(describing: defaultServerSideEncryption)), name: \(String(describing: name)), owner: \(String(describing: owner)), publicAccess: \(String(describing: publicAccess)), tags: \(String(describing: tags)), type: \(String(describing: type)))"}
}
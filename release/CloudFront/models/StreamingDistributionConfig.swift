// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The RTMP distribution's configuration information.</p>
public struct StreamingDistributionConfig: Equatable {
    /// <p>A complex type that contains information about CNAMEs (alternate domain names), if any,
    /// 			for this streaming distribution. </p>
    public let aliases: Aliases?
    /// <p>A unique value (for example, a date-time stamp) that ensures that the request can't be
    /// 			replayed.</p>
    /// 		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the
    /// 			<code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p>
    /// 		       <p>If <code>CallerReference</code> is a value that you already sent in a previous request to
    /// 			create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
    public let callerReference: String?
    /// <p>Any comments you want to include about the streaming distribution. </p>
    public let comment: String?
    /// <p>Whether the streaming distribution is enabled to accept user requests for
    /// 			content.</p>
    public let enabled: Bool?
    /// <p>A complex type that controls whether access logs are written for the streaming
    /// 			distribution. </p>
    public let logging: StreamingLoggingConfig?
    /// <p>A complex type that contains information about price class for this streaming
    /// 			distribution. </p>
    public let priceClass: PriceClass?
    /// <p>A complex type that contains information about the Amazon S3 bucket from which you want
    /// 			CloudFront to get your media files for distribution. </p>
    public let s3Origin: S3Origin?
    /// <p>A complex type that specifies any AWS accounts that you want to permit to create signed
    /// 			URLs for private content. If you want the distribution to use signed URLs, include this
    /// 			element; if you want the distribution to use public URLs, remove this element. For more
    /// 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through
    /// 				CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    public let trustedSigners: TrustedSigners?

    public init (
        aliases: Aliases? = nil,
        callerReference: String? = nil,
        comment: String? = nil,
        enabled: Bool? = nil,
        logging: StreamingLoggingConfig? = nil,
        priceClass: PriceClass? = nil,
        s3Origin: S3Origin? = nil,
        trustedSigners: TrustedSigners? = nil
    )
    {
        self.aliases = aliases
        self.callerReference = callerReference
        self.comment = comment
        self.enabled = enabled
        self.logging = logging
        self.priceClass = priceClass
        self.s3Origin = s3Origin
        self.trustedSigners = trustedSigners
    }
}

extension StreamingDistributionConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StreamingDistributionConfig(aliases: \(String(describing: aliases)), callerReference: \(String(describing: callerReference)), comment: \(String(describing: comment)), enabled: \(String(describing: enabled)), logging: \(String(describing: logging)), priceClass: \(String(describing: priceClass)), s3Origin: \(String(describing: s3Origin)), trustedSigners: \(String(describing: trustedSigners)))"}
}
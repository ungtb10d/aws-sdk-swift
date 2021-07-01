// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines settings for a method for the stage.</p>
public struct AwsApiGatewayMethodSettings: Equatable {
    /// <p>Indicates whether the cached responses are encrypted. </p>
    public let cacheDataEncrypted: Bool
    /// <p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL,
    ///          the longer the response is cached.</p>
    public let cacheTtlInSeconds: Int
    /// <p>Indicates whether responses are cached and returned for requests. For responses to be
    ///          cached, a cache cluster must be enabled on the stage.</p>
    public let cachingEnabled: Bool
    /// <p>Indicates whether data trace logging is enabled for the method. Data trace logging
    ///          affects the log entries that are pushed to CloudWatch Logs.</p>
    public let dataTraceEnabled: Bool
    /// <p>The HTTP method. You can use an asterisk (*) as a wildcard to apply method settings to
    ///          multiple methods.</p>
    public let httpMethod: String?
    /// <p>The logging level for this method. The logging level affects the log entries that are
    ///          pushed to CloudWatch Logs.</p>
    ///          <p>If the logging level is <code>ERROR</code>, then the logs only include error-level
    ///          entries.</p>
    ///          <p>If the logging level is <code>INFO</code>, then the logs include both <code>ERROR</code>
    ///          events and extra informational events.</p>
    ///          <p>Valid values: <code>OFF</code> | <code>ERROR</code> | <code>INFO</code>
    ///          </p>
    public let loggingLevel: String?
    /// <p>Indicates whether CloudWatch metrics are enabled for the method. </p>
    public let metricsEnabled: Bool
    /// <p>Indicates whether authorization is required for a cache invalidation request.</p>
    public let requireAuthorizationForCacheControl: Bool
    /// <p>The resource path for this method. Forward slashes (/) are encoded as ~1 . The initial
    ///          slash must include a forward slash.</p>
    ///          <p>For example, the path value <code>/resource/subresource</code> must be encoded as
    ///             <code>/~1resource~1subresource</code>.</p>
    ///          <p>To specify the root path, use only a slash (/). You can use an asterisk (*) as a
    ///          wildcard to apply method settings to multiple methods.</p>
    public let resourcePath: String?
    /// <p>The throttling burst limit for the method.</p>
    public let throttlingBurstLimit: Int
    /// <p>The throttling rate limit for the method.</p>
    public let throttlingRateLimit: Double
    /// <p>Indicates how to handle unauthorized requests for cache invalidation.</p>
    ///          <p>Valid values: <code>FAIL_WITH_403</code> | <code>SUCCEED_WITH_RESPONSE_HEADER</code> |
    ///             <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>
    ///          </p>
    public let unauthorizedCacheControlHeaderStrategy: String?

    public init (
        cacheDataEncrypted: Bool = false,
        cacheTtlInSeconds: Int = 0,
        cachingEnabled: Bool = false,
        dataTraceEnabled: Bool = false,
        httpMethod: String? = nil,
        loggingLevel: String? = nil,
        metricsEnabled: Bool = false,
        requireAuthorizationForCacheControl: Bool = false,
        resourcePath: String? = nil,
        throttlingBurstLimit: Int = 0,
        throttlingRateLimit: Double = 0.0,
        unauthorizedCacheControlHeaderStrategy: String? = nil
    )
    {
        self.cacheDataEncrypted = cacheDataEncrypted
        self.cacheTtlInSeconds = cacheTtlInSeconds
        self.cachingEnabled = cachingEnabled
        self.dataTraceEnabled = dataTraceEnabled
        self.httpMethod = httpMethod
        self.loggingLevel = loggingLevel
        self.metricsEnabled = metricsEnabled
        self.requireAuthorizationForCacheControl = requireAuthorizationForCacheControl
        self.resourcePath = resourcePath
        self.throttlingBurstLimit = throttlingBurstLimit
        self.throttlingRateLimit = throttlingRateLimit
        self.unauthorizedCacheControlHeaderStrategy = unauthorizedCacheControlHeaderStrategy
    }
}

extension AwsApiGatewayMethodSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsApiGatewayMethodSettings(cacheDataEncrypted: \(String(describing: cacheDataEncrypted)), cacheTtlInSeconds: \(String(describing: cacheTtlInSeconds)), cachingEnabled: \(String(describing: cachingEnabled)), dataTraceEnabled: \(String(describing: dataTraceEnabled)), httpMethod: \(String(describing: httpMethod)), loggingLevel: \(String(describing: loggingLevel)), metricsEnabled: \(String(describing: metricsEnabled)), requireAuthorizationForCacheControl: \(String(describing: requireAuthorizationForCacheControl)), resourcePath: \(String(describing: resourcePath)), throttlingBurstLimit: \(String(describing: throttlingBurstLimit)), throttlingRateLimit: \(String(describing: throttlingRateLimit)), unauthorizedCacheControlHeaderStrategy: \(String(describing: unauthorizedCacheControlHeaderStrategy)))"}
}
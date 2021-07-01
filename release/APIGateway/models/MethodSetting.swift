// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the method setting properties.</p>
public struct MethodSetting: Equatable {
    /// <p>Specifies whether the cached responses are encrypted. The PATCH path for this setting is <code>/{method_setting_key}/caching/dataEncrypted</code>, and the value is a Boolean.</p>
    public let cacheDataEncrypted: Bool
    /// <p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/ttlInSeconds</code>, and the value is an integer.</p>
    public let cacheTtlInSeconds: Int
    /// <p>Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/enabled</code>, and the value is a Boolean.</p>
    public let cachingEnabled: Bool
    /// <p>Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/dataTrace</code>, and the value is a Boolean.</p>
    public let dataTraceEnabled: Bool
    /// <p>Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/loglevel</code>, and the available levels are <code>OFF</code>, <code>ERROR</code>, and <code>INFO</code>. Choose <code>ERROR</code> to write only error-level entries to CloudWatch Logs, or choose <code>INFO</code> to include all <code>ERROR</code> events as well as extra informational events.</p>
    public let loggingLevel: String?
    /// <p>Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is <code>/{method_setting_key}/metrics/enabled</code>, and the value is a Boolean.</p>
    public let metricsEnabled: Bool
    /// <p>Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is <code>/{method_setting_key}/caching/requireAuthorizationForCacheControl</code>, and the value is a Boolean.</p>
    public let requireAuthorizationForCacheControl: Bool
    /// <p>Specifies the throttling burst limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/burstLimit</code>, and the value is an integer.</p>
    public let throttlingBurstLimit: Int
    /// <p>Specifies the throttling rate limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/rateLimit</code>, and the value is a double.</p>
    public let throttlingRateLimit: Double
    /// <p>Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is <code>/{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy</code>, and the available values are <code>FAIL_WITH_403</code>, <code>SUCCEED_WITH_RESPONSE_HEADER</code>, <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>.</p>
    public let unauthorizedCacheControlHeaderStrategy: UnauthorizedCacheControlHeaderStrategy?

    public init (
        cacheDataEncrypted: Bool = false,
        cacheTtlInSeconds: Int = 0,
        cachingEnabled: Bool = false,
        dataTraceEnabled: Bool = false,
        loggingLevel: String? = nil,
        metricsEnabled: Bool = false,
        requireAuthorizationForCacheControl: Bool = false,
        throttlingBurstLimit: Int = 0,
        throttlingRateLimit: Double = 0.0,
        unauthorizedCacheControlHeaderStrategy: UnauthorizedCacheControlHeaderStrategy? = nil
    )
    {
        self.cacheDataEncrypted = cacheDataEncrypted
        self.cacheTtlInSeconds = cacheTtlInSeconds
        self.cachingEnabled = cachingEnabled
        self.dataTraceEnabled = dataTraceEnabled
        self.loggingLevel = loggingLevel
        self.metricsEnabled = metricsEnabled
        self.requireAuthorizationForCacheControl = requireAuthorizationForCacheControl
        self.throttlingBurstLimit = throttlingBurstLimit
        self.throttlingRateLimit = throttlingRateLimit
        self.unauthorizedCacheControlHeaderStrategy = unauthorizedCacheControlHeaderStrategy
    }
}

extension MethodSetting: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MethodSetting(cacheDataEncrypted: \(String(describing: cacheDataEncrypted)), cacheTtlInSeconds: \(String(describing: cacheTtlInSeconds)), cachingEnabled: \(String(describing: cachingEnabled)), dataTraceEnabled: \(String(describing: dataTraceEnabled)), loggingLevel: \(String(describing: loggingLevel)), metricsEnabled: \(String(describing: metricsEnabled)), requireAuthorizationForCacheControl: \(String(describing: requireAuthorizationForCacheControl)), throttlingBurstLimit: \(String(describing: throttlingBurstLimit)), throttlingRateLimit: \(String(describing: throttlingRateLimit)), unauthorizedCacheControlHeaderStrategy: \(String(describing: unauthorizedCacheControlHeaderStrategy)))"}
}
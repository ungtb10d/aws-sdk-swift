// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes updates to configuration parameters for Amazon CloudWatch logging for an application.</p>
public struct MonitoringConfigurationUpdate: Equatable {
    /// <p>Describes updates to whether to use the default CloudWatch logging configuration for
    ///       an application. You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or
    ///     <code>MetricsLevel</code> parameters.</p>
    public let configurationTypeUpdate: ConfigurationType?
    /// <p>Describes updates to the verbosity of the CloudWatch Logs for an application.</p>
    public let logLevelUpdate: LogLevel?
    /// <p>Describes updates to the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>
    ///       level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>
    public let metricsLevelUpdate: MetricsLevel?

    public init (
        configurationTypeUpdate: ConfigurationType? = nil,
        logLevelUpdate: LogLevel? = nil,
        metricsLevelUpdate: MetricsLevel? = nil
    )
    {
        self.configurationTypeUpdate = configurationTypeUpdate
        self.logLevelUpdate = logLevelUpdate
        self.metricsLevelUpdate = metricsLevelUpdate
    }
}

extension MonitoringConfigurationUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MonitoringConfigurationUpdate(configurationTypeUpdate: \(String(describing: configurationTypeUpdate)), logLevelUpdate: \(String(describing: logLevelUpdate)), metricsLevelUpdate: \(String(describing: metricsLevelUpdate)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines the type of logs to send for the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>). Valid values: <code>CloudWatchLogGroupArn</code>, <code>Enabled</code>, <code>LogLevel</code>.</p>
public struct ModuleLoggingConfigurationInput: Equatable {
    /// <p>Indicates whether to enable the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) in CloudWatch Logs.</p>
    public let enabled: Bool?
    /// <p>Defines the Apache Airflow logs to send for the log type (e.g. <code>DagProcessingLogs</code>) to CloudWatch Logs. Valid values: <code>CRITICAL</code>, <code>ERROR</code>, <code>WARNING</code>, <code>INFO</code>.</p>
    public let logLevel: LoggingLevel?

    public init (
        enabled: Bool? = nil,
        logLevel: LoggingLevel? = nil
    )
    {
        self.enabled = enabled
        self.logLevel = logLevel
    }
}

extension ModuleLoggingConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModuleLoggingConfigurationInput(enabled: \(String(describing: enabled)), logLevel: \(String(describing: logLevel)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutAlarmInput: Equatable {
    /// <p>The name for the alarm. Specify the name of an existing alarm to update, and overwrite the
    ///       previous configuration of the alarm.</p>
    public let alarmName: String?
    /// <p>The arithmetic operation to use when comparing the specified statistic to the threshold.
    ///       The specified statistic value is used as the first operand.</p>
    public let comparisonOperator: ComparisonOperator?
    /// <p>The contact protocols to use for the alarm, such as <code>Email</code>, <code>SMS</code>
    ///       (text messaging), or both.</p>
    ///          <p>A notification is sent via the specified contact protocol if notifications are enabled for
    ///       the alarm, and when the alarm is triggered.</p>
    ///          <p>A notification is not sent if a contact protocol is not specified, if the specified
    ///       contact protocol is not configured in the AWS Region, or if notifications are not enabled
    ///       for the alarm using the <code>notificationEnabled</code> paramater.</p>
    ///          <p>Use the <code>CreateContactMethod</code> action to configure a contact protocol in an
    ///       AWS Region.</p>
    public let contactProtocols: [ContactProtocol]?
    /// <p>The number of data points that must be not within the specified threshold to trigger the
    ///       alarm. If you are setting an "M out of N" alarm, this value (<code>datapointsToAlarm</code>)
    ///       is the M.</p>
    public let datapointsToAlarm: Int?
    /// <p>The number of most recent periods over which data is compared to the specified threshold.
    ///       If you are setting an "M out of N" alarm, this value (<code>evaluationPeriods</code>) is the
    ///       N.</p>
    ///          <p>If you are setting an alarm that requires that a number of consecutive data points be
    ///       breaching to trigger the alarm, this value specifies the rolling period of time in which data
    ///       points are evaluated.</p>
    ///          <p>Each evaluation period is five minutes long. For example, specify an evaluation period of
    ///       24 to evaluate a metric over a rolling period of two hours.</p>
    ///          <p>You can specify a minimum valuation period of 1 (5 minutes), and a maximum evaluation
    ///       period of 288 (24 hours).</p>
    public let evaluationPeriods: Int?
    /// <p>The name of the metric to associate with the alarm.</p>
    ///          <p>You can configure up to two alarms per metric.</p>
    ///          <p>The following metrics are available for each resource type:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>Instances</b>: <code>BurstCapacityPercentage</code>,
    ///             <code>BurstCapacityTime</code>, <code>CPUUtilization</code>, <code>NetworkIn</code>,
    ///             <code>NetworkOut</code>, <code>StatusCheckFailed</code>,
    ///             <code>StatusCheckFailed_Instance</code>, and
    ///           <code>StatusCheckFailed_System</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Load balancers</b>:
    ///             <code>ClientTLSNegotiationErrorCount</code>, <code>HealthyHostCount</code>,
    ///             <code>UnhealthyHostCount</code>, <code>HTTPCode_LB_4XX_Count</code>,
    ///             <code>HTTPCode_LB_5XX_Count</code>, <code>HTTPCode_Instance_2XX_Count</code>,
    ///             <code>HTTPCode_Instance_3XX_Count</code>, <code>HTTPCode_Instance_4XX_Count</code>,
    ///             <code>HTTPCode_Instance_5XX_Count</code>, <code>InstanceResponseTime</code>,
    ///             <code>RejectedConnectionCount</code>, and <code>RequestCount</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Relational databases</b>: <code>CPUUtilization</code>,
    ///             <code>DatabaseConnections</code>, <code>DiskQueueDepth</code>,
    ///             <code>FreeStorageSpace</code>, <code>NetworkReceiveThroughput</code>, and
    ///             <code>NetworkTransmitThroughput</code>.</p>
    ///             </li>
    ///          </ul>
    ///          <p>For more information about these metrics, see <a href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-resource-health-metrics#available-metrics">Metrics available in Lightsail</a>.</p>
    public let metricName: MetricName?
    /// <p>The name of the Lightsail resource that will be monitored.</p>
    ///          <p>Instances, load balancers, and relational databases are the only Lightsail resources
    ///       that can currently be monitored by alarms.</p>
    public let monitoredResourceName: String?
    /// <p>Indicates whether the alarm is enabled.</p>
    ///          <p>Notifications are enabled by default if you don't specify this parameter.</p>
    public let notificationEnabled: Bool?
    /// <p>The alarm states that trigger a notification.</p>
    ///          <p>An alarm has the following possible states:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>ALARM</code> - The metric is outside of the defined threshold.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
    ///           available, or not enough data is available for the metric to determine the alarm
    ///           state.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>OK</code> - The metric is within the defined threshold.</p>
    ///             </li>
    ///          </ul>
    ///          <p>When you specify a notification trigger, the <code>ALARM</code> state must be specified.
    ///       The <code>INSUFFICIENT_DATA</code> and <code>OK</code> states can be specified in addition to
    ///       the <code>ALARM</code> state.</p>
    ///          <ul>
    ///             <li>
    ///                <p>If you specify <code>OK</code> as an alarm trigger, a notification is sent when the
    ///           alarm switches from an <code>ALARM</code> or <code>INSUFFICIENT_DATA</code> alarm state to
    ///           an <code>OK</code> state. This can be thought of as an <i>all clear</i>
    ///           alarm notification.</p>
    ///             </li>
    ///             <li>
    ///                <p>If you specify <code>INSUFFICIENT_DATA</code> as the alarm trigger, a notification is
    ///           sent when the alarm switches from an <code>OK</code> or <code>ALARM</code> alarm state to
    ///           an <code>INSUFFICIENT_DATA</code> state.</p>
    ///             </li>
    ///          </ul>
    ///          <p>The notification trigger defaults to <code>ALARM</code> if you don't specify this
    ///       parameter.</p>
    public let notificationTriggers: [AlarmState]?
    /// <p>The value against which the specified statistic is compared.</p>
    public let threshold: Double?
    /// <p>Sets how this alarm will handle missing data points.</p>
    ///          <p>An alarm can treat missing data in the following ways:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>breaching</code> - Assume the missing data is not within the threshold. Missing
    ///           data counts towards the number of times the metric is not within the threshold.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>notBreaching</code> - Assume the missing data is within the threshold. Missing
    ///           data does not count towards the number of times the metric is not within the
    ///           threshold.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ignore</code> - Ignore the missing data. Maintains the current alarm
    ///           state.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>missing</code> - Missing data is treated as missing.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If <code>treatMissingData</code> is not specified, the default behavior of
    ///         <code>missing</code> is used.</p>
    public let treatMissingData: TreatMissingData?

    public init (
        alarmName: String? = nil,
        comparisonOperator: ComparisonOperator? = nil,
        contactProtocols: [ContactProtocol]? = nil,
        datapointsToAlarm: Int? = nil,
        evaluationPeriods: Int? = nil,
        metricName: MetricName? = nil,
        monitoredResourceName: String? = nil,
        notificationEnabled: Bool? = nil,
        notificationTriggers: [AlarmState]? = nil,
        threshold: Double? = nil,
        treatMissingData: TreatMissingData? = nil
    )
    {
        self.alarmName = alarmName
        self.comparisonOperator = comparisonOperator
        self.contactProtocols = contactProtocols
        self.datapointsToAlarm = datapointsToAlarm
        self.evaluationPeriods = evaluationPeriods
        self.metricName = metricName
        self.monitoredResourceName = monitoredResourceName
        self.notificationEnabled = notificationEnabled
        self.notificationTriggers = notificationTriggers
        self.threshold = threshold
        self.treatMissingData = treatMissingData
    }
}

extension PutAlarmInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutAlarmInput(alarmName: \(String(describing: alarmName)), comparisonOperator: \(String(describing: comparisonOperator)), contactProtocols: \(String(describing: contactProtocols)), datapointsToAlarm: \(String(describing: datapointsToAlarm)), evaluationPeriods: \(String(describing: evaluationPeriods)), metricName: \(String(describing: metricName)), monitoredResourceName: \(String(describing: monitoredResourceName)), notificationEnabled: \(String(describing: notificationEnabled)), notificationTriggers: \(String(describing: notificationTriggers)), threshold: \(String(describing: threshold)), treatMissingData: \(String(describing: treatMissingData)))"}
}
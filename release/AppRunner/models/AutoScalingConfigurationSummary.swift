// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides summary information about an AWS App Runner automatic scaling configuration resource.</p>
///          <p>This type contains limited information about an auto scaling configuration. It includes only identification information, without configuration
///       details. It's returned by the <a>ListAutoScalingConfigurations</a> action. Complete configuration information is returned by the <a>CreateAutoScalingConfiguration</a>, <a>DescribeAutoScalingConfiguration</a>, and <a>DeleteAutoScalingConfiguration</a>
///       actions using the <a>AutoScalingConfiguration</a> type.</p>
public struct AutoScalingConfigurationSummary: Equatable {
    /// <p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>
    public let autoScalingConfigurationArn: String?
    /// <p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>
    public let autoScalingConfigurationName: String?
    /// <p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>"Status": "ACTIVE"</code>) with the same
    ///         <code>AutoScalingConfigurationName</code>.</p>
    public let autoScalingConfigurationRevision: Int

    public init (
        autoScalingConfigurationArn: String? = nil,
        autoScalingConfigurationName: String? = nil,
        autoScalingConfigurationRevision: Int = 0
    )
    {
        self.autoScalingConfigurationArn = autoScalingConfigurationArn
        self.autoScalingConfigurationName = autoScalingConfigurationName
        self.autoScalingConfigurationRevision = autoScalingConfigurationRevision
    }
}

extension AutoScalingConfigurationSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AutoScalingConfigurationSummary(autoScalingConfigurationArn: \(String(describing: autoScalingConfigurationArn)), autoScalingConfigurationName: \(String(describing: autoScalingConfigurationName)), autoScalingConfigurationRevision: \(String(describing: autoScalingConfigurationRevision)))"}
}
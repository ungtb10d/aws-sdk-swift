// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The parameters for a STEP_FUNCTIONS task.</p>
///          <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
///          <note>
///
///             <p>
///                <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the
///       <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
///       For information about how Systems Manager handles these options for the supported maintenance
///       window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
///
///             <p>
///                <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
///       instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
///       about how Systems Manager handles these options for the supported maintenance window task
///       types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
///             <p>For Step Functions tasks, Systems Manager ignores any values specified for
///      <code>TaskParameters</code> and <code>LoggingInfo</code>.</p>
///          </note>
public struct MaintenanceWindowStepFunctionsParameters: Equatable {
    /// <p>The inputs for the STEP_FUNCTIONS task.</p>
    public let input: String?
    /// <p>The name of the STEP_FUNCTIONS task.</p>
    public let name: String?

    public init (
        input: String? = nil,
        name: String? = nil
    )
    {
        self.input = input
        self.name = name
    }
}

extension MaintenanceWindowStepFunctionsParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MaintenanceWindowStepFunctionsParameters(input: \(String(describing: input)), name: \(String(describing: name)))"}
}
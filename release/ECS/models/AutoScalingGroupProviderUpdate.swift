// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The details of the Auto Scaling group capacity provider to update.</p>
public struct AutoScalingGroupProviderUpdate: Equatable {
    /// <p>The managed scaling settings for the Auto Scaling group capacity provider.</p>
    public let managedScaling: ManagedScaling?
    /// <p>The managed termination protection setting to use for the Auto Scaling group capacity
    /// 			provider. This determines whether the Auto Scaling group has managed termination
    /// 			protection.</p>
    /// 		       <important>
    /// 			         <p>When using managed termination protection, managed scaling must also be used
    /// 				otherwise managed termination protection will not work.</p>
    /// 		       </important>
    /// 		       <p>When managed termination protection is enabled, Amazon ECS prevents the Amazon EC2 instances in
    /// 			an Auto Scaling group that contain tasks from being terminated during a scale-in action.
    /// 			The Auto Scaling group and each instance in the Auto Scaling group must have instance
    /// 			protection from scale-in actions enabled as well. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection">Instance Protection</a> in the <i>AWS Auto Scaling User Guide</i>.</p>
    /// 		       <p>When managed termination protection is disabled, your Amazon EC2 instances are not
    /// 			protected from termination when the Auto Scaling group scales in.</p>
    public let managedTerminationProtection: ManagedTerminationProtection?

    public init (
        managedScaling: ManagedScaling? = nil,
        managedTerminationProtection: ManagedTerminationProtection? = nil
    )
    {
        self.managedScaling = managedScaling
        self.managedTerminationProtection = managedTerminationProtection
    }
}

extension AutoScalingGroupProviderUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AutoScalingGroupProviderUpdate(managedScaling: \(String(describing: managedScaling)), managedTerminationProtection: \(String(describing: managedTerminationProtection)))"}
}
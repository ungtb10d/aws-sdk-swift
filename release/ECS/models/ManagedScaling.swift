// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The managed scaling settings for the Auto Scaling group capacity provider.</p>
/// 		       <p>When managed scaling is enabled, Amazon ECS manages the scale-in and scale-out actions of
/// 			the Auto Scaling group. Amazon ECS manages a target tracking scaling policy using an
/// 			Amazon ECS-managed CloudWatch metric with the specified <code>targetCapacity</code> value as the
/// 			target value for the metric. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling">Using Managed Scaling</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
/// 		       <p>If managed scaling is disabled, the user must manage the scaling of the Auto Scaling
/// 			group.</p>
public struct ManagedScaling: Equatable {
    /// <p>The period of time, in seconds, after a newly launched Amazon EC2 instance can contribute
    /// 			to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value
    /// 			of <code>300</code> seconds is used.</p>
    public let instanceWarmupPeriod: Int?
    /// <p>The maximum number of container instances that Amazon ECS will scale in or scale out at one
    /// 			time. If this parameter is omitted, the default value of <code>10000</code> is
    /// 			used.</p>
    public let maximumScalingStepSize: Int?
    /// <p>The minimum number of container instances that Amazon ECS will scale in or scale out at one
    /// 			time. If this parameter is omitted, the default value of <code>1</code> is used.</p>
    public let minimumScalingStepSize: Int?
    /// <p>Whether or not to enable managed scaling for the capacity provider.</p>
    public let status: ManagedScalingStatus?
    /// <p>The target capacity value for the capacity provider. The specified value must be
    /// 			greater than <code>0</code> and less than or equal to <code>100</code>. A value of
    /// 				<code>100</code> will result in the Amazon EC2 instances in your Auto Scaling group being
    /// 			completely utilized.</p>
    public let targetCapacity: Int?

    public init (
        instanceWarmupPeriod: Int? = nil,
        maximumScalingStepSize: Int? = nil,
        minimumScalingStepSize: Int? = nil,
        status: ManagedScalingStatus? = nil,
        targetCapacity: Int? = nil
    )
    {
        self.instanceWarmupPeriod = instanceWarmupPeriod
        self.maximumScalingStepSize = maximumScalingStepSize
        self.minimumScalingStepSize = minimumScalingStepSize
        self.status = status
        self.targetCapacity = targetCapacity
    }
}

extension ManagedScaling: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ManagedScaling(instanceWarmupPeriod: \(String(describing: instanceWarmupPeriod)), maximumScalingStepSize: \(String(describing: maximumScalingStepSize)), minimumScalingStepSize: \(String(describing: minimumScalingStepSize)), status: \(String(describing: status)), targetCapacity: \(String(describing: targetCapacity)))"}
}
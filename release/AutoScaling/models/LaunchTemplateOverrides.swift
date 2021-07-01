// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an override for a launch template. The maximum number of instance types that
///             can be associated with an Auto Scaling group is 40. The maximum number of distinct launch
///             templates you can define for an Auto Scaling group is 20. For more information about configuring
///             overrides, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-override-options.html">Configuring
///                 overrides</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
public struct LaunchTemplateOverrides: Equatable {
    /// <p>The instance type, such as <code>m3.xlarge</code>. You must use an instance type that
    ///             is supported in your requested Region and Availability Zones. For more information, see
    ///                 <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance types</a> in the <i>Amazon Elastic Compute Cloud User
    ///                 Guide</i>.</p>
    public let instanceType: String?
    /// <p>Provides the launch template to be used when launching the instance type. For example,
    ///             some instance types might require a launch template with a different AMI. If not
    ///             provided, Amazon EC2 Auto Scaling uses the launch template that's defined for your mixed instances
    ///             policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-template-overrides.html">Specifying a
    ///                 different launch template for an instance type</a> in the
    ///                 <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    public let launchTemplateSpecification: LaunchTemplateSpecification?
    /// <p>The number of capacity units provided by the specified instance type in terms of
    ///             virtual CPUs, memory, storage, throughput, or other relative performance characteristic.
    ///             When a Spot or On-Demand Instance is provisioned, the capacity units count toward the
    ///             desired capacity. Amazon EC2 Auto Scaling provisions instances until the desired capacity is totally
    ///             fulfilled, even if this results in an overage. For example, if there are 2 units
    ///             remaining to fulfill capacity, and Amazon EC2 Auto Scaling can only provision an instance with a
    ///                 <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the
    ///             desired capacity is exceeded by 3 units. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html">Instance weighting for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
    ///             Value must be in the range of 1 to 999.</p>
    public let weightedCapacity: String?

    public init (
        instanceType: String? = nil,
        launchTemplateSpecification: LaunchTemplateSpecification? = nil,
        weightedCapacity: String? = nil
    )
    {
        self.instanceType = instanceType
        self.launchTemplateSpecification = launchTemplateSpecification
        self.weightedCapacity = weightedCapacity
    }
}

extension LaunchTemplateOverrides: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LaunchTemplateOverrides(instanceType: \(String(describing: instanceType)), launchTemplateSpecification: \(String(describing: launchTemplateSpecification)), weightedCapacity: \(String(describing: weightedCapacity)))"}
}
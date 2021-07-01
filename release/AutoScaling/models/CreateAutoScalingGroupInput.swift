// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAutoScalingGroupInput: Equatable {
    /// <p>The name of the Auto Scaling group. This name must be unique per Region per account.</p>
    public let autoScalingGroupName: String?
    /// <p>A list of Availability Zones where instances in the Auto Scaling group can be created. This
    ///             parameter is optional if you specify one or more subnets for
    ///                 <code>VPCZoneIdentifier</code>.</p>
    ///         <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
    ///             to launch instances into EC2-Classic.</p>
    public let availabilityZones: [String]?
    /// <p>Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing is
    ///             disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
    ///             Instance whenever Amazon EC2 notifies that a Spot Instance is at an elevated risk of
    ///             interruption. After launching a new instance, it then terminates an old instance. For
    ///             more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/capacity-rebalance.html">Amazon EC2 Auto Scaling Capacity
    ///                 Rebalancing</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let capacityRebalance: Bool?
    /// <p>The amount of time, in seconds, after a scaling activity completes before another
    ///             scaling activity can start. The default value is <code>300</code>. This setting applies
    ///             when using simple scaling policies, but not when using other scaling policies or
    ///             scheduled scaling. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling cooldowns for Amazon EC2 Auto Scaling</a>
    ///             in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let defaultCooldown: Int?
    /// <p>The desired capacity is the initial capacity of the Auto Scaling group at the time of its
    ///             creation and the capacity it attempts to maintain. It can scale beyond this capacity if
    ///             you configure auto scaling. This number must be greater than or equal to the minimum
    ///             size of the group and less than or equal to the maximum size of the group. If you do not
    ///             specify a desired capacity, the default is the minimum size of the group.</p>
    public let desiredCapacity: Int?
    /// <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    ///             of an EC2 instance that has come into service. During this time, any health check
    ///             failures for the instance are ignored. The default value is <code>0</code>. For more
    ///             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period">Health
    ///                 check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    ///         <p>Conditional: Required if you are adding an <code>ELB</code> health check.</p>
    public let healthCheckGracePeriod: Int?
    /// <p>The service to use for the health checks. The valid values are <code>EC2</code>
    ///             (default) and <code>ELB</code>. If you configure an Auto Scaling group to use load balancer
    ///             (ELB) health checks, it considers the instance unhealthy if it fails either the EC2
    ///             status checks or the load balancer health checks. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health checks
    ///                 for Auto Scaling instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let healthCheckType: String?
    /// <p>The ID of the instance used to base the launch configuration on. If specified, Amazon
    ///             EC2 Auto Scaling uses the configuration values from the specified instance to create a
    ///             new launch configuration. To get the instance ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> API operation. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Creating an Auto Scaling group using an EC2 instance</a> in the
    ///                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let instanceId: String?
    /// <p>The name of the launch configuration to use to launch instances. </p>
    ///         <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    ///                 <code>MixedInstancesPolicy</code>) or a launch configuration
    ///                 (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    public let launchConfigurationName: String?
    /// <p>Parameters used to specify the launch template and version to use to launch instances. </p>
    ///         <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    ///                 <code>MixedInstancesPolicy</code>) or a launch configuration
    ///                 (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    ///         <note>
    ///             <p>The launch template that is specified must be configured for use with an Auto Scaling
    ///                 group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating a launch
    ///                     template for an Auto Scaling group</a> in the
    ///                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    ///         </note>
    public let launchTemplate: LaunchTemplateSpecification?
    /// <p>One or more lifecycle hooks for the group, which specify actions to perform when
    ///             Amazon EC2 Auto Scaling launches or terminates instances.</p>
    public let lifecycleHookSpecificationList: [LifecycleHookSpecification]?
    /// <p>A list of Classic Load Balancers associated with this Auto Scaling group. For
    ///             Application Load Balancers, Network Load Balancers, and Gateway Load Balancers, specify
    ///             the <code>TargetGroupARNs</code> property instead.</p>
    public let loadBalancerNames: [String]?
    /// <p>The maximum amount of time, in seconds, that an instance can be in service. The
    ///             default is null. If specified, the value must be either 0 or a number equal to or
    ///             greater than 86,400 seconds (1 day). For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling instances based on maximum instance lifetime</a> in the
    ///                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let maxInstanceLifetime: Int?
    /// <p>The maximum size of the group.</p>
    ///         <note>
    ///             <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    ///                 go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    ///                 Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    ///                 weight (weights that define how many units each instance contributes to the desired
    ///                 capacity of the group).</p>
    ///         </note>
    public let maxSize: Int?
    /// <p>The minimum size of the group.</p>
    public let minSize: Int?
    /// <p>An embedded object that specifies a mixed instances policy. The required properties
    ///             must be specified. If optional properties are unspecified, their default values are
    ///             used.</p>
    ///         <p>The policy includes properties that not only define the distribution of On-Demand
    ///             Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the
    ///             Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacities, but also
    ///             the properties that specify the instance configuration information—the launch template
    ///             and instance types. The policy can also include a weight for each instance type and
    ///             different launch templates for individual instance types. For more information, see
    ///                 <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html">Auto Scaling groups with multiple
    ///                 instance types and purchase options</a> in the <i>Amazon EC2 Auto Scaling User
    ///                 Guide</i>.</p>
    public let mixedInstancesPolicy: MixedInstancesPolicy?
    /// <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    ///             when scaling in. For more information about preventing instances from terminating on
    ///             scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection">Instance scale-in protection</a> in the
    ///             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let newInstancesProtectedFromScaleIn: Bool?
    /// <p>The name of an existing placement group into which to launch your instances, if any. A
    ///             placement group is a logical grouping of instances within a single Availability Zone.
    ///             You cannot specify multiple Availability Zones and a placement group. For more
    ///             information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the
    ///                 <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    public let placementGroup: String?
    /// <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    ///             call other Amazon Web Services on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
    ///             named AWSServiceRoleForAutoScaling, which it creates if it does not exist. For more
    ///             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    ///                 roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let serviceLinkedRoleARN: String?
    /// <p>One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2
    ///             instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS
    ///             volumes, specify the tags in a launch template but use caution. If the launch template
    ///             specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling
    ///             overrides the value of that instance tag with the value specified by the Auto Scaling group. For
    ///             more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling groups and
    ///                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let tags: [Tag]?
    /// <p>The Amazon Resource Names (ARN) of the target groups to associate with the Auto Scaling group.
    ///             Instances are registered as targets in a target group, and traffic is routed to the
    ///             target group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    ///                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let targetGroupARNs: [String]?
    /// <p>A policy or a list of policies that are used to select the instance to terminate.
    ///             These policies are executed in the order that you list them. For more information, see
    ///                 <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling which Auto Scaling
    ///                 instances terminate during scale in</a> in the
    ///                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let terminationPolicies: [String]?
    /// <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC) where instances
    ///             in the Auto Scaling group can be created. If you specify <code>VPCZoneIdentifier</code> with
    ///                 <code>AvailabilityZones</code>, the subnets that you specify for this parameter must
    ///             reside in those Availability Zones.</p>
    ///         <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
    ///             to launch instances into a VPC.</p>
    public let vPCZoneIdentifier: String?

    public init (
        autoScalingGroupName: String? = nil,
        availabilityZones: [String]? = nil,
        capacityRebalance: Bool? = nil,
        defaultCooldown: Int? = nil,
        desiredCapacity: Int? = nil,
        healthCheckGracePeriod: Int? = nil,
        healthCheckType: String? = nil,
        instanceId: String? = nil,
        launchConfigurationName: String? = nil,
        launchTemplate: LaunchTemplateSpecification? = nil,
        lifecycleHookSpecificationList: [LifecycleHookSpecification]? = nil,
        loadBalancerNames: [String]? = nil,
        maxInstanceLifetime: Int? = nil,
        maxSize: Int? = nil,
        minSize: Int? = nil,
        mixedInstancesPolicy: MixedInstancesPolicy? = nil,
        newInstancesProtectedFromScaleIn: Bool? = nil,
        placementGroup: String? = nil,
        serviceLinkedRoleARN: String? = nil,
        tags: [Tag]? = nil,
        targetGroupARNs: [String]? = nil,
        terminationPolicies: [String]? = nil,
        vPCZoneIdentifier: String? = nil
    )
    {
        self.autoScalingGroupName = autoScalingGroupName
        self.availabilityZones = availabilityZones
        self.capacityRebalance = capacityRebalance
        self.defaultCooldown = defaultCooldown
        self.desiredCapacity = desiredCapacity
        self.healthCheckGracePeriod = healthCheckGracePeriod
        self.healthCheckType = healthCheckType
        self.instanceId = instanceId
        self.launchConfigurationName = launchConfigurationName
        self.launchTemplate = launchTemplate
        self.lifecycleHookSpecificationList = lifecycleHookSpecificationList
        self.loadBalancerNames = loadBalancerNames
        self.maxInstanceLifetime = maxInstanceLifetime
        self.maxSize = maxSize
        self.minSize = minSize
        self.mixedInstancesPolicy = mixedInstancesPolicy
        self.newInstancesProtectedFromScaleIn = newInstancesProtectedFromScaleIn
        self.placementGroup = placementGroup
        self.serviceLinkedRoleARN = serviceLinkedRoleARN
        self.tags = tags
        self.targetGroupARNs = targetGroupARNs
        self.terminationPolicies = terminationPolicies
        self.vPCZoneIdentifier = vPCZoneIdentifier
    }
}

extension CreateAutoScalingGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAutoScalingGroupInput(autoScalingGroupName: \(String(describing: autoScalingGroupName)), availabilityZones: \(String(describing: availabilityZones)), capacityRebalance: \(String(describing: capacityRebalance)), defaultCooldown: \(String(describing: defaultCooldown)), desiredCapacity: \(String(describing: desiredCapacity)), healthCheckGracePeriod: \(String(describing: healthCheckGracePeriod)), healthCheckType: \(String(describing: healthCheckType)), instanceId: \(String(describing: instanceId)), launchConfigurationName: \(String(describing: launchConfigurationName)), launchTemplate: \(String(describing: launchTemplate)), lifecycleHookSpecificationList: \(String(describing: lifecycleHookSpecificationList)), loadBalancerNames: \(String(describing: loadBalancerNames)), maxInstanceLifetime: \(String(describing: maxInstanceLifetime)), maxSize: \(String(describing: maxSize)), minSize: \(String(describing: minSize)), mixedInstancesPolicy: \(String(describing: mixedInstancesPolicy)), newInstancesProtectedFromScaleIn: \(String(describing: newInstancesProtectedFromScaleIn)), placementGroup: \(String(describing: placementGroup)), serviceLinkedRoleARN: \(String(describing: serviceLinkedRoleARN)), tags: \(String(describing: tags)), targetGroupARNs: \(String(describing: targetGroupARNs)), terminationPolicies: \(String(describing: terminationPolicies)), vPCZoneIdentifier: \(String(describing: vPCZoneIdentifier)))"}
}
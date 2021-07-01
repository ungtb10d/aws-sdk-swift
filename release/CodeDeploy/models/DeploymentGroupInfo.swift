// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a deployment group.</p>
public struct DeploymentGroupInfo: Equatable {
    /// <p>A list of alarms associated with the deployment group.</p>
    public let alarmConfiguration: AlarmConfiguration?
    /// <p>The application name.</p>
    public let applicationName: String?
    /// <p>Information about the automatic rollback configuration associated with the deployment
    ///             group.</p>
    public let autoRollbackConfiguration: AutoRollbackConfiguration?
    /// <p>A list of associated Auto Scaling groups.</p>
    public let autoScalingGroups: [AutoScalingGroup]?
    /// <p>Information about blue/green deployment options for a deployment group.</p>
    public let blueGreenDeploymentConfiguration: BlueGreenDeploymentConfiguration?
    /// <p>The destination platform type for the deployment (<code>Lambda</code>,
    ///                 <code>Server</code>, or <code>ECS</code>).</p>
    public let computePlatform: ComputePlatform?
    /// <p>The deployment configuration name.</p>
    public let deploymentConfigName: String?
    /// <p>The deployment group ID.</p>
    public let deploymentGroupId: String?
    /// <p>The deployment group name.</p>
    public let deploymentGroupName: String?
    /// <p>Information about the type of deployment, either in-place or blue/green, you want to
    ///             run and whether to route deployment traffic behind a load balancer.</p>
    public let deploymentStyle: DeploymentStyle?
    /// <p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances
    ///             with any of the specified tags.</p>
    public let ec2TagFilters: [EC2TagFilter]?
    /// <p>Information about groups of tags applied to an EC2 instance. The deployment group
    ///             includes only EC2 instances identified by all of the tag groups. Cannot be used in the
    ///             same call as ec2TagFilters.</p>
    public let ec2TagSet: EC2TagSet?
    /// <p> The target Amazon ECS services in the deployment group. This applies only to
    ///             deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service
    ///             is specified as an Amazon ECS cluster and service name pair using the format
    ///                 <code><clustername>:<servicename></code>. </p>
    public let ecsServices: [ECSService]?
    /// <p>Information about the most recent attempted deployment to the deployment group.</p>
    public let lastAttemptedDeployment: LastDeploymentInfo?
    /// <p>Information about the most recent successful deployment to the deployment
    ///             group.</p>
    public let lastSuccessfulDeployment: LastDeploymentInfo?
    /// <p>Information about the load balancer to use in a deployment.</p>
    public let loadBalancerInfo: LoadBalancerInfo?
    /// <p>The on-premises instance tags on which to filter. The deployment group includes
    ///             on-premises instances with any of the specified tags.</p>
    public let onPremisesInstanceTagFilters: [TagFilter]?
    /// <p>Information about groups of tags applied to an on-premises instance. The deployment
    ///             group includes only on-premises instances identified by all the tag groups. Cannot be
    ///             used in the same call as onPremisesInstanceTagFilters.</p>
    public let onPremisesTagSet: OnPremisesTagSet?
    /// <p>Indicates what happens when new EC2 instances are launched mid-deployment and do not
    ///             receive the deployed application revision.</p>
    ///         <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    ///             one or more 'auto-update outdated instances' deployments to apply the deployed
    ///             application revision to the new EC2 instances.</p>
    ///         <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    ///             deployment to update the new EC2 instances. This may result in instances having
    ///             different revisions.</p>
    public let outdatedInstancesStrategy: OutdatedInstancesStrategy?
    /// <p>A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make
    ///             calls to AWS services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html">Create a
    ///                 Service Role for AWS CodeDeploy</a> in the <i>AWS CodeDeploy User
    ///                 Guide</i>.</p>
    public let serviceRoleArn: String?
    /// <p>Information about the deployment group's target revision, including type and
    ///             location.</p>
    public let targetRevision: RevisionLocation?
    /// <p>Information about triggers associated with the deployment group.</p>
    public let triggerConfigurations: [TriggerConfig]?

    public init (
        alarmConfiguration: AlarmConfiguration? = nil,
        applicationName: String? = nil,
        autoRollbackConfiguration: AutoRollbackConfiguration? = nil,
        autoScalingGroups: [AutoScalingGroup]? = nil,
        blueGreenDeploymentConfiguration: BlueGreenDeploymentConfiguration? = nil,
        computePlatform: ComputePlatform? = nil,
        deploymentConfigName: String? = nil,
        deploymentGroupId: String? = nil,
        deploymentGroupName: String? = nil,
        deploymentStyle: DeploymentStyle? = nil,
        ec2TagFilters: [EC2TagFilter]? = nil,
        ec2TagSet: EC2TagSet? = nil,
        ecsServices: [ECSService]? = nil,
        lastAttemptedDeployment: LastDeploymentInfo? = nil,
        lastSuccessfulDeployment: LastDeploymentInfo? = nil,
        loadBalancerInfo: LoadBalancerInfo? = nil,
        onPremisesInstanceTagFilters: [TagFilter]? = nil,
        onPremisesTagSet: OnPremisesTagSet? = nil,
        outdatedInstancesStrategy: OutdatedInstancesStrategy? = nil,
        serviceRoleArn: String? = nil,
        targetRevision: RevisionLocation? = nil,
        triggerConfigurations: [TriggerConfig]? = nil
    )
    {
        self.alarmConfiguration = alarmConfiguration
        self.applicationName = applicationName
        self.autoRollbackConfiguration = autoRollbackConfiguration
        self.autoScalingGroups = autoScalingGroups
        self.blueGreenDeploymentConfiguration = blueGreenDeploymentConfiguration
        self.computePlatform = computePlatform
        self.deploymentConfigName = deploymentConfigName
        self.deploymentGroupId = deploymentGroupId
        self.deploymentGroupName = deploymentGroupName
        self.deploymentStyle = deploymentStyle
        self.ec2TagFilters = ec2TagFilters
        self.ec2TagSet = ec2TagSet
        self.ecsServices = ecsServices
        self.lastAttemptedDeployment = lastAttemptedDeployment
        self.lastSuccessfulDeployment = lastSuccessfulDeployment
        self.loadBalancerInfo = loadBalancerInfo
        self.onPremisesInstanceTagFilters = onPremisesInstanceTagFilters
        self.onPremisesTagSet = onPremisesTagSet
        self.outdatedInstancesStrategy = outdatedInstancesStrategy
        self.serviceRoleArn = serviceRoleArn
        self.targetRevision = targetRevision
        self.triggerConfigurations = triggerConfigurations
    }
}

extension DeploymentGroupInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeploymentGroupInfo(alarmConfiguration: \(String(describing: alarmConfiguration)), applicationName: \(String(describing: applicationName)), autoRollbackConfiguration: \(String(describing: autoRollbackConfiguration)), autoScalingGroups: \(String(describing: autoScalingGroups)), blueGreenDeploymentConfiguration: \(String(describing: blueGreenDeploymentConfiguration)), computePlatform: \(String(describing: computePlatform)), deploymentConfigName: \(String(describing: deploymentConfigName)), deploymentGroupId: \(String(describing: deploymentGroupId)), deploymentGroupName: \(String(describing: deploymentGroupName)), deploymentStyle: \(String(describing: deploymentStyle)), ec2TagFilters: \(String(describing: ec2TagFilters)), ec2TagSet: \(String(describing: ec2TagSet)), ecsServices: \(String(describing: ecsServices)), lastAttemptedDeployment: \(String(describing: lastAttemptedDeployment)), lastSuccessfulDeployment: \(String(describing: lastSuccessfulDeployment)), loadBalancerInfo: \(String(describing: loadBalancerInfo)), onPremisesInstanceTagFilters: \(String(describing: onPremisesInstanceTagFilters)), onPremisesTagSet: \(String(describing: onPremisesTagSet)), outdatedInstancesStrategy: \(String(describing: outdatedInstancesStrategy)), serviceRoleArn: \(String(describing: serviceRoleArn)), targetRevision: \(String(describing: targetRevision)), triggerConfigurations: \(String(describing: triggerConfigurations)))"}
}
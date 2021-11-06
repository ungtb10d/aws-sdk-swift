// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// With Application Auto Scaling, you can configure automatic scaling for the following resources:
///
/// * Amazon AppStream 2.0 fleets
///
/// * Amazon Aurora Replicas
///
/// * Amazon Comprehend document classification and entity recognizer endpoints
///
/// * Amazon DynamoDB tables and global secondary indexes throughput capacity
///
/// * Amazon ECS services
///
/// * Amazon ElastiCache for Redis clusters (replication groups)
///
/// * Amazon EMR clusters
///
/// * Amazon Keyspaces (for Apache Cassandra) tables
///
/// * Lambda function provisioned concurrency
///
/// * Amazon Managed Streaming for Apache Kafka broker storage
///
/// * Amazon SageMaker endpoint variants
///
/// * Spot Fleet (Amazon EC2) requests
///
/// * Custom resources provided by your own applications or services
///
///
/// API Summary The Application Auto Scaling service API includes three key sets of actions:
///
/// * Register and manage scalable targets - Register Amazon Web Services or custom resources as scalable targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and retrieve information on existing scalable targets.
///
/// * Configure and manage automatic scaling - Define scaling policies to dynamically scale your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions, and retrieve your recent scaling activity history.
///
/// * Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by calling the [RegisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html) API action for any Application Auto Scaling scalable target. You can suspend and resume (individually or in combination) scale-out activities that are triggered by a scaling policy, scale-in activities that are triggered by a scaling policy, and scheduled scaling.
///
///
/// To learn more about Application Auto Scaling, including information about granting IAM users required permissions for Application Auto Scaling actions, see the [Application Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).
public protocol ApplicationAutoScalingClientProtocol {
    /// Deletes the specified scaling policy for an Application Auto Scaling scalable target. Deleting a step scaling policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. For more information, see [Delete a step scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html#delete-step-scaling-policy) and [Delete a target tracking scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html#delete-target-tracking-policy) in the Application Auto Scaling User Guide.
    func deleteScalingPolicy(input: DeleteScalingPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteScalingPolicyOutputResponse, DeleteScalingPolicyOutputError>) -> Void)
    /// Deletes the specified scheduled action for an Application Auto Scaling scalable target. For more information, see [Delete a scheduled action](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action) in the Application Auto Scaling User Guide.
    func deleteScheduledAction(input: DeleteScheduledActionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteScheduledActionOutputResponse, DeleteScheduledActionOutputError>) -> Void)
    /// Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which resources have been registered, use [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). Deregistering a scalable target deletes the scaling policies and the scheduled actions that are associated with it.
    func deregisterScalableTarget(input: DeregisterScalableTargetInput, completion: @escaping (ClientRuntime.SdkResult<DeregisterScalableTargetOutputResponse, DeregisterScalableTargetOutputError>) -> Void)
    /// Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    func describeScalableTargets(input: DescribeScalableTargetsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeScalableTargetsOutputResponse, DescribeScalableTargetsOutputError>) -> Void)
    /// Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension.
    func describeScalingActivities(input: DescribeScalingActivitiesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeScalingActivitiesOutputResponse, DescribeScalingActivitiesOutputError>) -> Void)
    /// Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html) and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html) in the Application Auto Scaling User Guide.
    func describeScalingPolicies(input: DescribeScalingPoliciesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeScalingPoliciesOutputResponse, DescribeScalingPoliciesOutputError>) -> Void)
    /// Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html) and [Managing scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html) in the Application Auto Scaling User Guide.
    func describeScheduledActions(input: DescribeScheduledActionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeScheduledActionsOutputResponse, DescribeScheduledActionsOutputError>) -> Void)
    /// Creates or updates a scaling policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale out and scale in. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30. We recommend caution, however, when using target tracking scaling policies with step scaling policies because conflicts between these policies can cause undesirable behavior. For example, if the step scaling policy initiates a scale-in activity before the target tracking policy is ready to scale in, the scale-in activity will not be blocked. After the scale-in activity completes, the target tracking policy could instruct the scalable target to scale out again. For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html) and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html) in the Application Auto Scaling User Guide. If a scalable target is deregistered, the scalable target is no longer available to execute scaling policies. Any scaling policies that were specified for the scalable target are deleted.
    func putScalingPolicy(input: PutScalingPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutScalingPolicyOutputResponse, PutScalingPolicyOutputError>) -> Void)
    /// Creates or updates a scheduled action for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target. When start and end times are specified with a recurring schedule using a cron expression or rates, they form the boundaries for when the recurring action starts and stops. To update a scheduled action, specify the parameters that you want to change. If you don't specify start and end times, the old values are deleted. For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html) in the Application Auto Scaling User Guide. If a scalable target is deregistered, the scalable target is no longer available to run scheduled actions. Any scheduled actions that were specified for the scalable target are deleted.
    func putScheduledAction(input: PutScheduledActionInput, completion: @escaping (ClientRuntime.SdkResult<PutScheduledActionOutputResponse, PutScheduledActionOutputError>) -> Void)
    /// Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out and scale in. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace. When you register a new scalable target, you must specify values for minimum and maximum capacity. Current capacity will be adjusted within the specified range when scaling starts. Application Auto Scaling scaling policies will not scale capacity to values that are outside of this range. After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). You can also view the scaling policies for a service namespace by using [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). If you no longer need a scalable target, you can deregister it by using [DeregisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html). To update a scalable target, specify the parameters that you want to change. Include the parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request.
    func registerScalableTarget(input: RegisterScalableTargetInput, completion: @escaping (ClientRuntime.SdkResult<RegisterScalableTargetOutputResponse, RegisterScalableTargetOutputError>) -> Void)
}

public enum ApplicationAutoScalingClientTypes {}

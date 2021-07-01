// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateTaskSetInput: Equatable {
    /// <p>The capacity provider strategy to use for the task set.</p>
    /// 		       <p>A capacity provider strategy consists of one or more capacity providers along with the
    /// 				<code>base</code> and <code>weight</code> to assign to them. A capacity provider
    /// 			must be associated with the cluster to be used in a capacity provider strategy. The
    /// 				<a>PutClusterCapacityProviders</a> API is used to associate a capacity
    /// 			provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or
    /// 				<code>UPDATING</code> status can be used.</p>
    /// 		       <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    /// 			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    /// 				<code>launchType</code> is specified, the
    /// 				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    /// 		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    /// 			provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p>
    /// 		       <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or
    /// 				<code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are
    /// 			available to all accounts and only need to be associated with a cluster to be
    /// 			used.</p>
    /// 		       <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the
    /// 			list of available capacity providers for a cluster after the cluster is created.</p>
    public let capacityProviderStrategy: [CapacityProviderStrategyItem]?
    /// <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    /// 			request. Up to 32 ASCII characters are allowed.</p>
    public let clientToken: String?
    /// <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the
    /// 			task set in.</p>
    public let cluster: String?
    /// <p>An optional non-unique tag that identifies this task set in external systems. If the
    /// 			task set is associated with a service discovery registry, the tasks in this task set
    /// 			will have the <code>ECS_TASK_SET_EXTERNAL_ID</code> AWS Cloud Map attribute set to the provided
    /// 			value.</p>
    public let externalId: String?
    /// <p>The launch type that new tasks in the task set will use. For more information, see
    /// 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    /// 		       <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    /// 			parameter must be omitted.</p>
    public let launchType: LaunchType?
    /// <p>A load balancer object representing the load balancer to use with the task set. The
    /// 			supported load balancer types are either an Application Load Balancer or a Network Load Balancer.</p>
    public let loadBalancers: [LoadBalancer]?
    /// <p>An object representing the network configuration for a task set.</p>
    public let networkConfiguration: NetworkConfiguration?
    /// <p>The platform version that the tasks in the task set should use. A platform version is
    /// 			specified only for tasks using the Fargate launch type. If one isn't
    /// 			specified, the <code>LATEST</code> platform version is used by default.</p>
    public let platformVersion: String?
    /// <p>A floating-point percentage of the desired number of tasks to place and keep running
    /// 			in the task set.</p>
    public let scale: Scale?
    /// <p>The short name or full Amazon Resource Name (ARN) of the service to create the task set in.</p>
    public let service: String?
    /// <p>The details of the service discovery registries to assign to this task set. For more
    /// 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    /// 				Discovery</a>.</p>
    public let serviceRegistries: [ServiceRegistry]?
    /// <p>The metadata that you apply to the task set to help you categorize and organize them.
    /// 			Each tag consists of a key and an optional value, both of which you define. When a
    /// 			service is deleted, the tags are deleted as well.</p>
    ///          <p>The following basic restrictions apply to tags:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>Maximum number of tags per resource - 50</p>
    ///             </li>
    ///             <li>
    ///                 <p>For each resource, each tag key must be unique, and each tag key can have only
    ///                     one value.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    ///             </li>
    ///             <li>
    ///                 <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    ///             </li>
    ///             <li>
    ///                 <p>If your tagging schema is used across multiple services and resources,
    ///                     remember that other services may have restrictions on allowed characters.
    ///                     Generally allowed characters are: letters, numbers, and spaces representable in
    ///                     UTF-8, and the following characters: + - = . _ : / @.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Tag keys and values are case-sensitive.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    ///                     combination of such as a prefix for either keys or values as it is reserved for
    ///                     AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with
    ///                     this prefix do not count against your tags per resource limit.</p>
    ///             </li>
    ///          </ul>
    public let tags: [Tag]?
    /// <p>The task definition for the tasks in the task set to use.</p>
    public let taskDefinition: String?

    public init (
        capacityProviderStrategy: [CapacityProviderStrategyItem]? = nil,
        clientToken: String? = nil,
        cluster: String? = nil,
        externalId: String? = nil,
        launchType: LaunchType? = nil,
        loadBalancers: [LoadBalancer]? = nil,
        networkConfiguration: NetworkConfiguration? = nil,
        platformVersion: String? = nil,
        scale: Scale? = nil,
        service: String? = nil,
        serviceRegistries: [ServiceRegistry]? = nil,
        tags: [Tag]? = nil,
        taskDefinition: String? = nil
    )
    {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.clientToken = clientToken
        self.cluster = cluster
        self.externalId = externalId
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.platformVersion = platformVersion
        self.scale = scale
        self.service = service
        self.serviceRegistries = serviceRegistries
        self.tags = tags
        self.taskDefinition = taskDefinition
    }
}

extension CreateTaskSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTaskSetInput(capacityProviderStrategy: \(String(describing: capacityProviderStrategy)), clientToken: \(String(describing: clientToken)), cluster: \(String(describing: cluster)), externalId: \(String(describing: externalId)), launchType: \(String(describing: launchType)), loadBalancers: \(String(describing: loadBalancers)), networkConfiguration: \(String(describing: networkConfiguration)), platformVersion: \(String(describing: platformVersion)), scale: \(String(describing: scale)), service: \(String(describing: service)), serviceRegistries: \(String(describing: serviceRegistries)), tags: \(String(describing: tags)), taskDefinition: \(String(describing: taskDefinition)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A Docker container that is part of a task.</p>
public struct Container: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the container.</p>
    public let containerArn: String?
    /// <p>The number of CPU units set for the container. The value will be <code>0</code> if no
    /// 			value was specified in the container definition when the task definition was
    /// 			registered.</p>
    public let cpu: String?
    /// <p>The exit code returned from the container.</p>
    public let exitCode: Int?
    /// <p>The IDs of each GPU assigned to the container.</p>
    public let gpuIds: [String]?
    /// <p>The health status of the container. If health checks are not configured for this
    /// 			container in its task definition, then it reports the health status as
    /// 				<code>UNKNOWN</code>.</p>
    public let healthStatus: HealthStatus?
    /// <p>The image used for the container.</p>
    public let image: String?
    /// <p>The container image manifest digest.</p>
    /// 		       <note>
    /// 			         <p>The <code>imageDigest</code> is only returned if the container is using an image
    /// 				hosted in Amazon ECR, otherwise it is omitted.</p>
    /// 		       </note>
    public let imageDigest: String?
    /// <p>The last known status of the container.</p>
    public let lastStatus: String?
    /// <p>The details of any Amazon ECS managed agents associated with the container.</p>
    public let managedAgents: [ManagedAgent]?
    /// <p>The hard limit (in MiB) of memory set for the container.</p>
    public let memory: String?
    /// <p>The soft limit (in MiB) of memory set for the container.</p>
    public let memoryReservation: String?
    /// <p>The name of the container.</p>
    public let name: String?
    /// <p>The network bindings associated with the container.</p>
    public let networkBindings: [NetworkBinding]?
    /// <p>The network interfaces associated with the container.</p>
    public let networkInterfaces: [NetworkInterface]?
    /// <p>A short (255 max characters) human-readable string to provide additional details about
    /// 			a running or stopped container.</p>
    public let reason: String?
    /// <p>The ID of the Docker container.</p>
    public let runtimeId: String?
    /// <p>The ARN of the task.</p>
    public let taskArn: String?

    public init (
        containerArn: String? = nil,
        cpu: String? = nil,
        exitCode: Int? = nil,
        gpuIds: [String]? = nil,
        healthStatus: HealthStatus? = nil,
        image: String? = nil,
        imageDigest: String? = nil,
        lastStatus: String? = nil,
        managedAgents: [ManagedAgent]? = nil,
        memory: String? = nil,
        memoryReservation: String? = nil,
        name: String? = nil,
        networkBindings: [NetworkBinding]? = nil,
        networkInterfaces: [NetworkInterface]? = nil,
        reason: String? = nil,
        runtimeId: String? = nil,
        taskArn: String? = nil
    )
    {
        self.containerArn = containerArn
        self.cpu = cpu
        self.exitCode = exitCode
        self.gpuIds = gpuIds
        self.healthStatus = healthStatus
        self.image = image
        self.imageDigest = imageDigest
        self.lastStatus = lastStatus
        self.managedAgents = managedAgents
        self.memory = memory
        self.memoryReservation = memoryReservation
        self.name = name
        self.networkBindings = networkBindings
        self.networkInterfaces = networkInterfaces
        self.reason = reason
        self.runtimeId = runtimeId
        self.taskArn = taskArn
    }
}

extension Container: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Container(containerArn: \(String(describing: containerArn)), cpu: \(String(describing: cpu)), exitCode: \(String(describing: exitCode)), gpuIds: \(String(describing: gpuIds)), healthStatus: \(String(describing: healthStatus)), image: \(String(describing: image)), imageDigest: \(String(describing: imageDigest)), lastStatus: \(String(describing: lastStatus)), managedAgents: \(String(describing: managedAgents)), memory: \(String(describing: memory)), memoryReservation: \(String(describing: memoryReservation)), name: \(String(describing: name)), networkBindings: \(String(describing: networkBindings)), networkInterfaces: \(String(describing: networkInterfaces)), reason: \(String(describing: reason)), runtimeId: \(String(describing: runtimeId)), taskArn: \(String(describing: taskArn)))"}
}
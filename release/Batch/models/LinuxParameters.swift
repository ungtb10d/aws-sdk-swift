// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Linux-specific modifications that are applied to the container, such as details for device mappings.</p>
public struct LinuxParameters: Equatable {
    /// <p>Any host devices to expose to the container. This parameter maps to <code>Devices</code> in the
    ///    <a href="https://docs.docker.com/engine/api/v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--device</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    ///          <note>
    ///             <p>This parameter isn't applicable to jobs running on Fargate resources and shouldn't be provided.</p>
    ///          </note>
    public let devices: [Device]?
    /// <p>If true, run an <code>init</code> process inside the container that forwards signals and reaps processes. This
    ///    parameter maps to the <code>--init</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.
    ///    This parameter requires version 1.25 of the Docker Remote API or greater on your
    ///  container instance. To check the Docker Remote API version on your container instance, log into your
    ///  container instance and run the following command: <code>sudo docker version | grep "Server API version"</code>
    ///          </p>
    public let initProcessEnabled: Bool
    /// <p>The total amount of swap memory (in MiB) a container can use. This parameter is translated to the
    ///     <code>--memory-swap</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a> where the value is the
    ///    sum of the container memory plus the <code>maxSwap</code> value. For more information, see <a href="https://docs.docker.com/config/containers/resource_constraints/#--memory-swap-details">
    ///                <code>--memory-swap</code> details</a> in the Docker documentation.</p>
    ///          <p>If a <code>maxSwap</code> value of <code>0</code> is specified, the container doesn't use swap. Accepted values
    ///    are <code>0</code> or any positive integer. If the <code>maxSwap</code> parameter is omitted, the container doesn't
    ///    use the swap configuration for the container instance it is running on. A <code>maxSwap</code> value must be set for
    ///    the <code>swappiness</code> parameter to be used.</p>
    ///          <note>
    ///             <p>This parameter isn't applicable to jobs running on Fargate resources and shouldn't be provided.</p>
    ///          </note>
    public let maxSwap: Int
    /// <p>The value for the size (in MiB) of the <code>/dev/shm</code> volume. This parameter maps to the
    ///     <code>--shm-size</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    ///          <note>
    ///             <p>This parameter isn't applicable to jobs running on Fargate resources and shouldn't be provided.</p>
    ///          </note>
    public let sharedMemorySize: Int
    /// <p>This allows you to tune a container's memory swappiness behavior. A <code>swappiness</code> value of
    ///     <code>0</code> causes swapping not to happen unless absolutely necessary. A <code>swappiness</code> value of
    ///     <code>100</code> causes pages to be swapped very aggressively. Accepted values are whole numbers between
    ///     <code>0</code> and <code>100</code>. If the <code>swappiness</code> parameter isn't specified, a default value of
    ///     <code>60</code> is used. If a value isn't specified for <code>maxSwap</code> then this parameter is ignored. If
    ///     <code>maxSwap</code> is set to 0, the container doesn't use swap. This parameter maps to the
    ///     <code>--memory-swappiness</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    ///          <p>Consider the following when you use a per-container swap configuration.</p>
    ///          <ul>
    ///             <li>
    ///                <p>Swap space must be enabled and allocated on the container instance for the containers to use.</p>
    ///                <note>
    ///                   <p>The Amazon ECS optimized AMIs don't have swap enabled by default. You must enable swap on the instance to use this
    ///       feature. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-store-swap-volumes.html">Instance Store Swap Volumes</a> in the
    ///        <i>Amazon EC2 User Guide for Linux Instances</i> or <a href="http://aws.amazon.com/premiumsupport/knowledge-center/ec2-memory-swap-file/">How do I allocate memory to work as swap space in an
    ///        Amazon EC2 instance by using a swap file?</a>
    ///                   </p>
    ///                </note>
    ///             </li>
    ///             <li>
    ///                <p>The swap space parameters are only supported for job definitions using EC2 resources.</p>
    ///             </li>
    ///             <li>
    ///                <p>If the <code>maxSwap</code> and <code>swappiness</code> parameters are omitted from a job definition, each
    ///      container will have a default <code>swappiness</code> value of 60, and the total swap usage will be limited to two
    ///      times the memory reservation of the container.</p>
    ///             </li>
    ///          </ul>
    ///          <note>
    ///             <p>This parameter isn't applicable to jobs running on Fargate resources and shouldn't be provided.</p>
    ///          </note>
    public let swappiness: Int
    /// <p>The container path, mount options, and size (in MiB) of the tmpfs mount. This parameter maps to the
    ///     <code>--tmpfs</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    ///          <note>
    ///             <p>This parameter isn't applicable to jobs running on Fargate resources and shouldn't be provided.</p>
    ///          </note>
    public let tmpfs: [Tmpfs]?

    public init (
        devices: [Device]? = nil,
        initProcessEnabled: Bool = false,
        maxSwap: Int = 0,
        sharedMemorySize: Int = 0,
        swappiness: Int = 0,
        tmpfs: [Tmpfs]? = nil
    )
    {
        self.devices = devices
        self.initProcessEnabled = initProcessEnabled
        self.maxSwap = maxSwap
        self.sharedMemorySize = sharedMemorySize
        self.swappiness = swappiness
        self.tmpfs = tmpfs
    }
}

extension LinuxParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LinuxParameters(devices: \(String(describing: devices)), initProcessEnabled: \(String(describing: initProcessEnabled)), maxSwap: \(String(describing: maxSwap)), sharedMemorySize: \(String(describing: sharedMemorySize)), swappiness: \(String(describing: swappiness)), tmpfs: \(String(describing: tmpfs)))"}
}
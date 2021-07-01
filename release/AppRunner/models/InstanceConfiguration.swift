// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the runtime configuration of an AWS App Runner service instance (scaling unit).</p>
public struct InstanceConfiguration: Equatable {
    /// <p>The number of CPU units reserved for each instance of your App Runner service.</p>
    ///          <p>Default: <code>1 vCPU</code>
    ///          </p>
    public let cpu: String?
    /// <p>The Amazon Resource Name (ARN) of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls
    ///       any AWS APIs.</p>
    public let instanceRoleArn: String?
    /// <p>The amount of memory, in MB or GB, reserved for each instance of your App Runner service.</p>
    ///          <p>Default: <code>2 GB</code>
    ///          </p>
    public let memory: String?

    public init (
        cpu: String? = nil,
        instanceRoleArn: String? = nil,
        memory: String? = nil
    )
    {
        self.cpu = cpu
        self.instanceRoleArn = instanceRoleArn
        self.memory = memory
    }
}

extension InstanceConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceConfiguration(cpu: \(String(describing: cpu)), instanceRoleArn: \(String(describing: instanceRoleArn)), memory: \(String(describing: memory)))"}
}
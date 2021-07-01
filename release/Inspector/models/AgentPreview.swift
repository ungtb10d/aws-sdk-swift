// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
public struct AgentPreview: Equatable {
    /// <p>The health status of the Amazon Inspector Agent.</p>
    public let agentHealth: AgentHealth?
    /// <p>The ID of the EC2 instance where the agent is installed.</p>
    public let agentId: String?
    /// <p>The version of the Amazon Inspector Agent.</p>
    public let agentVersion: String?
    /// <p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>
    public let autoScalingGroup: String?
    /// <p>The hostname of the EC2 instance on which the Amazon Inspector Agent is
    ///          installed.</p>
    public let hostname: String?
    /// <p>The IP address of the EC2 instance on which the Amazon Inspector Agent is
    ///          installed.</p>
    public let ipv4Address: String?
    /// <p>The kernel version of the operating system running on the EC2 instance on which the
    ///          Amazon Inspector Agent is installed.</p>
    public let kernelVersion: String?
    /// <p>The operating system running on the EC2 instance on which the Amazon Inspector Agent
    ///          is installed.</p>
    public let operatingSystem: String?

    public init (
        agentHealth: AgentHealth? = nil,
        agentId: String? = nil,
        agentVersion: String? = nil,
        autoScalingGroup: String? = nil,
        hostname: String? = nil,
        ipv4Address: String? = nil,
        kernelVersion: String? = nil,
        operatingSystem: String? = nil
    )
    {
        self.agentHealth = agentHealth
        self.agentId = agentId
        self.agentVersion = agentVersion
        self.autoScalingGroup = autoScalingGroup
        self.hostname = hostname
        self.ipv4Address = ipv4Address
        self.kernelVersion = kernelVersion
        self.operatingSystem = operatingSystem
    }
}

extension AgentPreview: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AgentPreview(agentHealth: \(String(describing: agentHealth)), agentId: \(String(describing: agentId)), agentVersion: \(String(describing: agentVersion)), autoScalingGroup: \(String(describing: autoScalingGroup)), hostname: \(String(describing: hostname)), ipv4Address: \(String(describing: ipv4Address)), kernelVersion: \(String(describing: kernelVersion)), operatingSystem: \(String(describing: operatingSystem)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the state of an EC2 instance.</p>
public struct InstanceState: Equatable {
    /// <p>A description of the instance state. This string can contain one or more of the following messages.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>N/A</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>A transient error occurred. Please try again later.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance has failed at least the UnhealthyThreshold number of health checks consecutively.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance has not passed the configured HealthyThreshold number of health checks consecutively.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance registration is still in progress.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance is in the EC2 Availability Zone for which LoadBalancer is not configured to route traffic to.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance is not currently registered with the LoadBalancer.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance deregistration currently in progress.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Disable Availability Zone is currently in progress.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance is in pending state.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance is in stopped state.</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>Instance is in terminated state.</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let description: String?
    /// <p>The ID of the instance.</p>
    public let instanceId: String?
    /// <p>Information about the cause of <code>OutOfService</code> instances.
    ///          Specifically, whether the cause is Elastic Load Balancing or the instance.</p>
    ///         <p>Valid values: <code>ELB</code> | <code>Instance</code> | <code>N/A</code>
    ///          </p>
    public let reasonCode: String?
    /// <p>The current state of the instance.</p>
    ///         <p>Valid values: <code>InService</code> | <code>OutOfService</code> | <code>Unknown</code>
    ///          </p>
    public let state: String?

    public init (
        description: String? = nil,
        instanceId: String? = nil,
        reasonCode: String? = nil,
        state: String? = nil
    )
    {
        self.description = description
        self.instanceId = instanceId
        self.reasonCode = reasonCode
        self.state = state
    }
}

extension InstanceState: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceState(description: \(String(describing: description)), instanceId: \(String(describing: instanceId)), reasonCode: \(String(describing: reasonCode)), state: \(String(describing: state)))"}
}
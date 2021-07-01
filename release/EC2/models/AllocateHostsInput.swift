// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AllocateHostsInput: Equatable {
    /// <p>Indicates whether the host accepts any untargeted instance launches that
    ///     		match its instance type configuration, or if it only accepts Host tenancy
    ///     		instance launches that specify its unique host ID. For more information,
    ///     		see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-dedicated-hosts-work.html#dedicated-hosts-understanding">
    ///         	Understanding auto-placement and affinity</a> in the <i>Amazon EC2 User Guide</i>.</p>
    ///
    ///         <p>Default: <code>on</code>
    ///          </p>
    public let autoPlacement: AutoPlacement?
    /// <p>The Availability Zone in which to allocate the Dedicated Host.</p>
    public let availabilityZone: String?
    /// <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring Idempotency</a>.</p>
    public let clientToken: String?
    /// <p>Indicates whether to enable or disable host recovery for the Dedicated Host.
    /// 			Host recovery is disabled by default. For more information, see
    /// 			<a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html">
    /// 			Host recovery</a> in the <i>Amazon EC2 User Guide</i>.</p>
    /// 		       <p>Default: <code>off</code>
    ///          </p>
    public let hostRecovery: HostRecovery?
    /// <p>Specifies the instance family to be supported by the Dedicated Hosts. If you specify
    /// 			an instance family, the Dedicated Hosts support multiple instance types within that
    /// 			instance family.</p>
    /// 		
    /// 		       <p>If you want the Dedicated Hosts to support a specific instance type only, omit this
    /// 			parameter and specify <b>InstanceType</b>
    /// 			instead. You cannot specify <b>InstanceFamily</b> and
    /// 			<b>InstanceType</b> in the same request.</p>
    public let instanceFamily: String?
    /// <p>Specifies the instance type to be supported by the Dedicated Hosts. If you
    /// 		specify an instance type, the Dedicated Hosts support instances of the
    /// 		specified instance type only.</p>
    ///     	
    ///     	    <p>If you want the Dedicated Hosts to support multiple instance types in a specific
    ///     		instance family, omit this parameter and specify <b>InstanceFamily</b>
    ///     		instead. You cannot specify <b>InstanceType</b> and
    ///     		<b>InstanceFamily</b> in the same request.</p>
    public let instanceType: String?
    /// <p>The number of Dedicated Hosts to allocate to your account with these parameters.</p>
    public let quantity: Int
    /// <p>The tags to apply to the Dedicated Host during creation.</p>
    public let tagSpecifications: [TagSpecification]?

    public init (
        autoPlacement: AutoPlacement? = nil,
        availabilityZone: String? = nil,
        clientToken: String? = nil,
        hostRecovery: HostRecovery? = nil,
        instanceFamily: String? = nil,
        instanceType: String? = nil,
        quantity: Int = 0,
        tagSpecifications: [TagSpecification]? = nil
    )
    {
        self.autoPlacement = autoPlacement
        self.availabilityZone = availabilityZone
        self.clientToken = clientToken
        self.hostRecovery = hostRecovery
        self.instanceFamily = instanceFamily
        self.instanceType = instanceType
        self.quantity = quantity
        self.tagSpecifications = tagSpecifications
    }
}

extension AllocateHostsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AllocateHostsInput(autoPlacement: \(String(describing: autoPlacement)), availabilityZone: \(String(describing: availabilityZone)), clientToken: \(String(describing: clientToken)), hostRecovery: \(String(describing: hostRecovery)), instanceFamily: \(String(describing: instanceFamily)), instanceType: \(String(describing: instanceType)), quantity: \(String(describing: quantity)), tagSpecifications: \(String(describing: tagSpecifications)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AuthorizeSecurityGroupEgressInput: Equatable {
    /// <p>Not supported. Use a set of IP permissions to specify the CIDR.</p>
    public let cidrIp: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>Not supported. Use a set of IP permissions to specify the port.</p>
    public let fromPort: Int
    /// <p>The ID of the security group.</p>
    public let groupId: String?
    /// <p>The sets of IP permissions. You can't specify a destination security group and a CIDR IP
    ///             address range in the same set of permissions.</p>
    public let ipPermissions: [IpPermission]?
    /// <p>Not supported. Use a set of IP permissions to specify the protocol name or
    ///             number.</p>
    public let ipProtocol: String?
    /// <p>Not supported. Use a set of IP permissions to specify a
    ///             destination security group.</p>
    public let sourceSecurityGroupName: String?
    /// <p>Not supported. Use a set of IP permissions to specify a
    ///             destination security group.</p>
    public let sourceSecurityGroupOwnerId: String?
    /// <p>Not supported. Use a set of IP permissions to specify the port.</p>
    public let toPort: Int

    public init (
        cidrIp: String? = nil,
        dryRun: Bool = false,
        fromPort: Int = 0,
        groupId: String? = nil,
        ipPermissions: [IpPermission]? = nil,
        ipProtocol: String? = nil,
        sourceSecurityGroupName: String? = nil,
        sourceSecurityGroupOwnerId: String? = nil,
        toPort: Int = 0
    )
    {
        self.cidrIp = cidrIp
        self.dryRun = dryRun
        self.fromPort = fromPort
        self.groupId = groupId
        self.ipPermissions = ipPermissions
        self.ipProtocol = ipProtocol
        self.sourceSecurityGroupName = sourceSecurityGroupName
        self.sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId
        self.toPort = toPort
    }
}

extension AuthorizeSecurityGroupEgressInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AuthorizeSecurityGroupEgressInput(cidrIp: \(String(describing: cidrIp)), dryRun: \(String(describing: dryRun)), fromPort: \(String(describing: fromPort)), groupId: \(String(describing: groupId)), ipPermissions: \(String(describing: ipPermissions)), ipProtocol: \(String(describing: ipProtocol)), sourceSecurityGroupName: \(String(describing: sourceSecurityGroupName)), sourceSecurityGroupOwnerId: \(String(describing: sourceSecurityGroupOwnerId)), toPort: \(String(describing: toPort)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the status of a security group associated with the virtual private cloud (VPC)
///          hosting your replication and DB instances.</p>
public struct VpcSecurityGroupMembership: Equatable {
    /// <p>The status of the VPC security group.</p>
    public let status: String?
    /// <p>The VPC security group ID.</p>
    public let vpcSecurityGroupId: String?

    public init (
        status: String? = nil,
        vpcSecurityGroupId: String? = nil
    )
    {
        self.status = status
        self.vpcSecurityGroupId = vpcSecurityGroupId
    }
}

extension VpcSecurityGroupMembership: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VpcSecurityGroupMembership(status: \(String(describing: status)), vpcSecurityGroupId: \(String(describing: vpcSecurityGroupId)))"}
}
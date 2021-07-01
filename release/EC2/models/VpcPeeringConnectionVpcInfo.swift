// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a VPC in a VPC peering connection.</p>
public struct VpcPeeringConnectionVpcInfo: Equatable {
    /// <p>The IPv4 CIDR block for the VPC.</p>
    public let cidrBlock: String?
    /// <p>Information about the IPv4 CIDR blocks for the VPC.</p>
    public let cidrBlockSet: [CidrBlock]?
    /// <p>The IPv6 CIDR block for the VPC.</p>
    public let ipv6CidrBlockSet: [Ipv6CidrBlock]?
    /// <p>The AWS account ID of the VPC owner.</p>
    public let ownerId: String?
    /// <p>Information about the VPC peering connection options for the accepter or requester VPC.</p>
    public let peeringOptions: VpcPeeringConnectionOptionsDescription?
    /// <p>The Region in which the VPC is located.</p>
    public let region: String?
    /// <p>The ID of the VPC.</p>
    public let vpcId: String?

    public init (
        cidrBlock: String? = nil,
        cidrBlockSet: [CidrBlock]? = nil,
        ipv6CidrBlockSet: [Ipv6CidrBlock]? = nil,
        ownerId: String? = nil,
        peeringOptions: VpcPeeringConnectionOptionsDescription? = nil,
        region: String? = nil,
        vpcId: String? = nil
    )
    {
        self.cidrBlock = cidrBlock
        self.cidrBlockSet = cidrBlockSet
        self.ipv6CidrBlockSet = ipv6CidrBlockSet
        self.ownerId = ownerId
        self.peeringOptions = peeringOptions
        self.region = region
        self.vpcId = vpcId
    }
}

extension VpcPeeringConnectionVpcInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VpcPeeringConnectionVpcInfo(cidrBlock: \(String(describing: cidrBlock)), cidrBlockSet: \(String(describing: cidrBlockSet)), ipv6CidrBlockSet: \(String(describing: ipv6CidrBlockSet)), ownerId: \(String(describing: ownerId)), peeringOptions: \(String(describing: peeringOptions)), region: \(String(describing: region)), vpcId: \(String(describing: vpcId)))"}
}
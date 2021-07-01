// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateVpcCidrBlockInput: Equatable {
    /// <p>Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.</p>
    public let amazonProvidedIpv6CidrBlock: Bool
    /// <p>An IPv4 CIDR block to associate with the VPC.</p>
    public let cidrBlock: String?
    /// <p>An IPv6 CIDR block from the IPv6 address pool. You must also specify <code>Ipv6Pool</code> in the request.</p>
    ///         <p>To let Amazon choose the IPv6 CIDR block for you, omit this parameter.</p>
    public let ipv6CidrBlock: String?
    /// <p>The name of the location from which we advertise the IPV6 CIDR block. Use this parameter
    ///       to limit the CIDR block to this location.</p>
    ///          <p> You must set <code>AmazonProvidedIpv6CidrBlock</code> to <code>true</code> to use this parameter.</p>
    ///          <p> You can have one IPv6 CIDR block association per network border group.</p>
    public let ipv6CidrBlockNetworkBorderGroup: String?
    /// <p>The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.</p>
    public let ipv6Pool: String?
    /// <p>The ID of the VPC.</p>
    public let vpcId: String?

    public init (
        amazonProvidedIpv6CidrBlock: Bool = false,
        cidrBlock: String? = nil,
        ipv6CidrBlock: String? = nil,
        ipv6CidrBlockNetworkBorderGroup: String? = nil,
        ipv6Pool: String? = nil,
        vpcId: String? = nil
    )
    {
        self.amazonProvidedIpv6CidrBlock = amazonProvidedIpv6CidrBlock
        self.cidrBlock = cidrBlock
        self.ipv6CidrBlock = ipv6CidrBlock
        self.ipv6CidrBlockNetworkBorderGroup = ipv6CidrBlockNetworkBorderGroup
        self.ipv6Pool = ipv6Pool
        self.vpcId = vpcId
    }
}

extension AssociateVpcCidrBlockInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateVpcCidrBlockInput(amazonProvidedIpv6CidrBlock: \(String(describing: amazonProvidedIpv6CidrBlock)), cidrBlock: \(String(describing: cidrBlock)), ipv6CidrBlock: \(String(describing: ipv6CidrBlock)), ipv6CidrBlockNetworkBorderGroup: \(String(describing: ipv6CidrBlockNetworkBorderGroup)), ipv6Pool: \(String(describing: ipv6Pool)), vpcId: \(String(describing: vpcId)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AcceptVpcPeeringConnectionOutputResponse: Equatable {
    /// <p>Information about the VPC peering connection.</p>
    public let vpcPeeringConnection: VpcPeeringConnection?

    public init (
        vpcPeeringConnection: VpcPeeringConnection? = nil
    )
    {
        self.vpcPeeringConnection = vpcPeeringConnection
    }
}

extension AcceptVpcPeeringConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AcceptVpcPeeringConnectionOutputResponse(vpcPeeringConnection: \(String(describing: vpcPeeringConnection)))"}
}
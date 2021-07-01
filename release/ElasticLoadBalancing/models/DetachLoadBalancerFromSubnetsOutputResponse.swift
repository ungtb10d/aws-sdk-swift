// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of DetachLoadBalancerFromSubnets.</p>
public struct DetachLoadBalancerFromSubnetsOutputResponse: Equatable {
    /// <p>The IDs of the remaining subnets for the load balancer.</p>
    public let subnets: [String]?

    public init (
        subnets: [String]? = nil
    )
    {
        self.subnets = subnets
    }
}

extension DetachLoadBalancerFromSubnetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetachLoadBalancerFromSubnetsOutputResponse(subnets: \(String(describing: subnets)))"}
}
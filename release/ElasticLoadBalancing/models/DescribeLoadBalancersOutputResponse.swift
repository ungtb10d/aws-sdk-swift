// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for DescribeLoadBalancers.</p>
public struct DescribeLoadBalancersOutputResponse: Equatable {
    /// <p>Information about the load balancers.</p>
    public let loadBalancerDescriptions: [LoadBalancerDescription]?
    /// <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    public let nextMarker: String?

    public init (
        loadBalancerDescriptions: [LoadBalancerDescription]? = nil,
        nextMarker: String? = nil
    )
    {
        self.loadBalancerDescriptions = loadBalancerDescriptions
        self.nextMarker = nextMarker
    }
}

extension DescribeLoadBalancersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeLoadBalancersOutputResponse(loadBalancerDescriptions: \(String(describing: loadBalancerDescriptions)), nextMarker: \(String(describing: nextMarker)))"}
}
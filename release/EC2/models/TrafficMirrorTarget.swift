// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a Traffic Mirror target.</p>
public struct TrafficMirrorTarget: Equatable {
    /// <p>Information about the Traffic Mirror target.</p>
    public let description: String?
    /// <p>The network interface ID that is attached to the target.</p>
    public let networkInterfaceId: String?
    /// <p>The Amazon Resource Name (ARN) of the Network Load Balancer.</p>
    public let networkLoadBalancerArn: String?
    /// <p>The ID of the account that owns the Traffic Mirror target.</p>
    public let ownerId: String?
    /// <p>The tags assigned to the Traffic Mirror target.</p>
    public let tags: [Tag]?
    /// <p>The ID of the Traffic Mirror target.</p>
    public let trafficMirrorTargetId: String?
    /// <p>The type of Traffic Mirror target.</p>
    public let type: TrafficMirrorTargetType?

    public init (
        description: String? = nil,
        networkInterfaceId: String? = nil,
        networkLoadBalancerArn: String? = nil,
        ownerId: String? = nil,
        tags: [Tag]? = nil,
        trafficMirrorTargetId: String? = nil,
        type: TrafficMirrorTargetType? = nil
    )
    {
        self.description = description
        self.networkInterfaceId = networkInterfaceId
        self.networkLoadBalancerArn = networkLoadBalancerArn
        self.ownerId = ownerId
        self.tags = tags
        self.trafficMirrorTargetId = trafficMirrorTargetId
        self.type = type
    }
}

extension TrafficMirrorTarget: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TrafficMirrorTarget(description: \(String(describing: description)), networkInterfaceId: \(String(describing: networkInterfaceId)), networkLoadBalancerArn: \(String(describing: networkLoadBalancerArn)), ownerId: \(String(describing: ownerId)), tags: \(String(describing: tags)), trafficMirrorTargetId: \(String(describing: trafficMirrorTargetId)), type: \(String(describing: type)))"}
}
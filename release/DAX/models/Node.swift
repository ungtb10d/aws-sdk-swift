// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Represents an individual node within a DAX cluster.</p>
public struct Node: Equatable {
    /// <p>The Availability Zone (AZ) in which the node has been deployed.</p>
    public let availabilityZone: String?
    /// <p>The endpoint for the node, consisting of a DNS name and a port number. Client
    ///             applications can connect directly to a node endpoint, if desired (as an alternative to
    ///             allowing DAX client software to intelligently route requests and responses to nodes in
    ///             the DAX cluster.</p>
    public let endpoint: Endpoint?
    /// <p>The date and time (in UNIX epoch format) when the node was launched.</p>
    public let nodeCreateTime: Date?
    /// <p>A system-generated identifier for the node.</p>
    public let nodeId: String?
    /// <p>The current status of the node. For example: <code>available</code>.</p>
    public let nodeStatus: String?
    /// <p>The status of the parameter group associated with this node. For example,
    ///                 <code>in-sync</code>.</p>
    public let parameterGroupStatus: String?

    public init (
        availabilityZone: String? = nil,
        endpoint: Endpoint? = nil,
        nodeCreateTime: Date? = nil,
        nodeId: String? = nil,
        nodeStatus: String? = nil,
        parameterGroupStatus: String? = nil
    )
    {
        self.availabilityZone = availabilityZone
        self.endpoint = endpoint
        self.nodeCreateTime = nodeCreateTime
        self.nodeId = nodeId
        self.nodeStatus = nodeStatus
        self.parameterGroupStatus = parameterGroupStatus
    }
}

extension Node: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Node(availabilityZone: \(String(describing: availabilityZone)), endpoint: \(String(describing: endpoint)), nodeCreateTime: \(String(describing: nodeCreateTime)), nodeId: \(String(describing: nodeId)), nodeStatus: \(String(describing: nodeStatus)), parameterGroupStatus: \(String(describing: parameterGroupStatus)))"}
}
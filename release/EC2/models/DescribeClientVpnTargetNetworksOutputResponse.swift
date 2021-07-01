// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeClientVpnTargetNetworksOutputResponse: Equatable {
    /// <p>Information about the associated target networks.</p>
    public let clientVpnTargetNetworks: [TargetNetwork]?
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        clientVpnTargetNetworks: [TargetNetwork]? = nil,
        nextToken: String? = nil
    )
    {
        self.clientVpnTargetNetworks = clientVpnTargetNetworks
        self.nextToken = nextToken
    }
}

extension DescribeClientVpnTargetNetworksOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeClientVpnTargetNetworksOutputResponse(clientVpnTargetNetworks: \(String(describing: clientVpnTargetNetworks)), nextToken: \(String(describing: nextToken)))"}
}
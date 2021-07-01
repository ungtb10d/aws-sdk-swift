// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The result of a <code><a>CreateOutboundCrossClusterSearchConnection</a></code> request. Contains the details of the newly created cross-cluster search connection.</p>
public struct CreateOutboundCrossClusterSearchConnectionOutputResponse: Equatable {
    /// <p>Specifies the connection alias provided during the create connection request.</p>
    public let connectionAlias: String?
    /// <p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the newly created connection.</p>
    public let connectionStatus: OutboundCrossClusterSearchConnectionStatus?
    /// <p>Unique id for the created outbound connection, which is used for subsequent operations on connection.</p>
    public let crossClusterSearchConnectionId: String?
    /// <p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>
    public let destinationDomainInfo: DomainInformation?
    /// <p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>
    public let sourceDomainInfo: DomainInformation?

    public init (
        connectionAlias: String? = nil,
        connectionStatus: OutboundCrossClusterSearchConnectionStatus? = nil,
        crossClusterSearchConnectionId: String? = nil,
        destinationDomainInfo: DomainInformation? = nil,
        sourceDomainInfo: DomainInformation? = nil
    )
    {
        self.connectionAlias = connectionAlias
        self.connectionStatus = connectionStatus
        self.crossClusterSearchConnectionId = crossClusterSearchConnectionId
        self.destinationDomainInfo = destinationDomainInfo
        self.sourceDomainInfo = sourceDomainInfo
    }
}

extension CreateOutboundCrossClusterSearchConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateOutboundCrossClusterSearchConnectionOutputResponse(connectionAlias: \(String(describing: connectionAlias)), connectionStatus: \(String(describing: connectionStatus)), crossClusterSearchConnectionId: \(String(describing: crossClusterSearchConnectionId)), destinationDomainInfo: \(String(describing: destinationDomainInfo)), sourceDomainInfo: \(String(describing: sourceDomainInfo)))"}
}
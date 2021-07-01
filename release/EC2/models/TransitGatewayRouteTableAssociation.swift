// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an association between a route table and a resource attachment.</p>
public struct TransitGatewayRouteTableAssociation: Equatable {
    /// <p>The ID of the resource.</p>
    public let resourceId: String?
    /// <p>The resource type. Note that the <code>tgw-peering</code> resource type has been deprecated.</p>
    public let resourceType: TransitGatewayAttachmentResourceType?
    /// <p>The state of the association.</p>
    public let state: TransitGatewayAssociationState?
    /// <p>The ID of the attachment.</p>
    public let transitGatewayAttachmentId: String?

    public init (
        resourceId: String? = nil,
        resourceType: TransitGatewayAttachmentResourceType? = nil,
        state: TransitGatewayAssociationState? = nil,
        transitGatewayAttachmentId: String? = nil
    )
    {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.state = state
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }
}

extension TransitGatewayRouteTableAssociation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TransitGatewayRouteTableAssociation(resourceId: \(String(describing: resourceId)), resourceType: \(String(describing: resourceType)), state: \(String(describing: state)), transitGatewayAttachmentId: \(String(describing: transitGatewayAttachmentId)))"}
}
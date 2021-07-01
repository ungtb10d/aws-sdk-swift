// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RejectTransitGatewayPeeringAttachmentOutputResponse: Equatable {
    /// <p>The transit gateway peering attachment.</p>
    public let transitGatewayPeeringAttachment: TransitGatewayPeeringAttachment?

    public init (
        transitGatewayPeeringAttachment: TransitGatewayPeeringAttachment? = nil
    )
    {
        self.transitGatewayPeeringAttachment = transitGatewayPeeringAttachment
    }
}

extension RejectTransitGatewayPeeringAttachmentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RejectTransitGatewayPeeringAttachmentOutputResponse(transitGatewayPeeringAttachment: \(String(describing: transitGatewayPeeringAttachment)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of AttachVpnGateway.</p>
public struct AttachVpnGatewayOutputResponse: Equatable {
    /// <p>Information about the attachment.</p>
    public let vpcAttachment: VpcAttachment?

    public init (
        vpcAttachment: VpcAttachment? = nil
    )
    {
        self.vpcAttachment = vpcAttachment
    }
}

extension AttachVpnGatewayOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AttachVpnGatewayOutputResponse(vpcAttachment: \(String(describing: vpcAttachment)))"}
}
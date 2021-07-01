// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteTransitGatewayInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the transit gateway.</p>
    public let transitGatewayId: String?

    public init (
        dryRun: Bool = false,
        transitGatewayId: String? = nil
    )
    {
        self.dryRun = dryRun
        self.transitGatewayId = transitGatewayId
    }
}

extension DeleteTransitGatewayInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteTransitGatewayInput(dryRun: \(String(describing: dryRun)), transitGatewayId: \(String(describing: transitGatewayId)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ImportClientVpnClientCertificateRevocationListInput: Equatable {
    /// <p>The client certificate revocation list file. For more information, see <a href="https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/cvpn-working-certificates.html#cvpn-working-certificates-generate">Generate a Client Certificate Revocation List</a> in the
    /// 				<i>AWS Client VPN Administrator Guide</i>.</p>
    public let certificateRevocationList: String?
    /// <p>The ID of the Client VPN endpoint to which the client certificate revocation list applies.</p>
    public let clientVpnEndpointId: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool

    public init (
        certificateRevocationList: String? = nil,
        clientVpnEndpointId: String? = nil,
        dryRun: Bool = false
    )
    {
        self.certificateRevocationList = certificateRevocationList
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
    }
}

extension ImportClientVpnClientCertificateRevocationListInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ImportClientVpnClientCertificateRevocationListInput(certificateRevocationList: \(String(describing: certificateRevocationList)), clientVpnEndpointId: \(String(describing: clientVpnEndpointId)), dryRun: \(String(describing: dryRun)))"}
}
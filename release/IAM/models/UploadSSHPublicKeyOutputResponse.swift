// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a successful <a>UploadSSHPublicKey</a>
///       request.</p>
public struct UploadSSHPublicKeyOutputResponse: Equatable {
    /// <p>Contains information about the SSH public key.</p>
    public let sSHPublicKey: SSHPublicKey?

    public init (
        sSHPublicKey: SSHPublicKey? = nil
    )
    {
        self.sSHPublicKey = sSHPublicKey
    }
}

extension UploadSSHPublicKeyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UploadSSHPublicKeyOutputResponse(sSHPublicKey: \(String(describing: sSHPublicKey)))"}
}
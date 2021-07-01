// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input for the DeleteCertificate operation.</p>
public struct DeleteCertificateInput: Equatable {
    /// <p>The ID of the certificate. (The last part of the certificate ARN contains the
    ///          certificate ID.)</p>
    public let certificateId: String?
    /// <p>Forces the deletion of a certificate if it is inactive and is not attached to an IoT
    ///          thing.</p>
    public let forceDelete: Bool

    public init (
        certificateId: String? = nil,
        forceDelete: Bool = false
    )
    {
        self.certificateId = certificateId
        self.forceDelete = forceDelete
    }
}

extension DeleteCertificateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteCertificateInput(certificateId: \(String(describing: certificateId)), forceDelete: \(String(describing: forceDelete)))"}
}
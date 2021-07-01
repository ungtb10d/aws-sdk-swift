// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input to the RegisterCertificate operation.</p>
public struct RegisterCertificateInput: Equatable {
    /// <p>The CA certificate used to sign the device certificate being registered.</p>
    public let caCertificatePem: String?
    /// <p>The certificate data, in PEM format.</p>
    public let certificatePem: String?
    /// <p>A boolean value that specifies if the certificate is set to active.</p>
    @available(*, deprecated)
    public let setAsActive: Bool?
    /// <p>The status of the register certificate request.</p>
    public let status: CertificateStatus?

    public init (
        caCertificatePem: String? = nil,
        certificatePem: String? = nil,
        setAsActive: Bool? = nil,
        status: CertificateStatus? = nil
    )
    {
        self.caCertificatePem = caCertificatePem
        self.certificatePem = certificatePem
        self.setAsActive = setAsActive
        self.status = status
    }
}

extension RegisterCertificateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterCertificateInput(caCertificatePem: \(String(describing: caCertificatePem)), certificatePem: \(String(describing: certificatePem)), setAsActive: \(String(describing: setAsActive)), status: \(String(describing: status)))"}
}
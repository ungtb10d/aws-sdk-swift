// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about one of the following:</p>
///          <ul>
///             <li>
///                <p>The initial validation of each domain name that occurs as a result of the
///                   <code>RequestCertificate</code> request</p>
///             </li>
///             <li>
///                <p>The validation of each domain name in the certificate, as it pertains to AWS
///                Certificate Manager managed renewal</p>
///             </li>
///          </ul>
public struct AwsCertificateManagerCertificateDomainValidationOption: Equatable {
    /// <p>A fully qualified domain name (FQDN) in the certificate.</p>
    public let domainName: String?
    /// <p>The CNAME record that is added to the DNS database for domain validation.</p>
    public let resourceRecord: AwsCertificateManagerCertificateResourceRecord?
    /// <p>The domain name that AWS Certificate Manager uses to send domain validation
    ///          emails.</p>
    public let validationDomain: String?
    /// <p>A list of email addresses that AWS Certificate Manager uses to send domain validation
    ///          emails.</p>
    public let validationEmails: [String]?
    /// <p>The method used to validate the domain name.</p>
    public let validationMethod: String?
    /// <p>The validation status of the domain name.</p>
    public let validationStatus: String?

    public init (
        domainName: String? = nil,
        resourceRecord: AwsCertificateManagerCertificateResourceRecord? = nil,
        validationDomain: String? = nil,
        validationEmails: [String]? = nil,
        validationMethod: String? = nil,
        validationStatus: String? = nil
    )
    {
        self.domainName = domainName
        self.resourceRecord = resourceRecord
        self.validationDomain = validationDomain
        self.validationEmails = validationEmails
        self.validationMethod = validationMethod
        self.validationStatus = validationStatus
    }
}

extension AwsCertificateManagerCertificateDomainValidationOption: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsCertificateManagerCertificateDomainValidationOption(domainName: \(String(describing: domainName)), resourceRecord: \(String(describing: resourceRecord)), validationDomain: \(String(describing: validationDomain)), validationEmails: \(String(describing: validationEmails)), validationMethod: \(String(describing: validationMethod)), validationStatus: \(String(describing: validationStatus)))"}
}
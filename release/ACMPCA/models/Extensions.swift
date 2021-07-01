// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains X.509 extension information for a certificate.</p>
public struct Extensions: Equatable {
    /// <p>Contains a sequence of one or more policy information terms, each of which consists of
    /// 			an object identifier (OID) and optional qualifiers. For more information, see NIST's
    /// 			definition of <a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object
    /// 				Identifier (OID)</a>.</p>
    /// 		       <p>In an end-entity certificate, these terms indicate the policy under which the
    /// 			certificate was issued and the purposes for which it may be used. In a CA certificate,
    /// 			these terms limit the set of policies for certification paths that include this
    /// 			certificate.</p>
    public let certificatePolicies: [PolicyInformation]?
    /// <p>Specifies additional purposes for which the certified public key may be used other
    /// 			than basic purposes indicated in the <code>KeyUsage</code> extension.</p>
    public let extendedKeyUsage: [ExtendedKeyUsage]?
    /// <p>Defines one or more purposes for which the key contained in the certificate can be
    /// 			used. Default value for each option is false.</p>
    public let keyUsage: KeyUsage?
    /// <p>The subject alternative name extension allows identities to be bound to the subject of
    /// 			the certificate. These identities may be included in addition to or in place of the
    /// 			identity in the subject field of the certificate.</p>
    public let subjectAlternativeNames: [GeneralName]?

    public init (
        certificatePolicies: [PolicyInformation]? = nil,
        extendedKeyUsage: [ExtendedKeyUsage]? = nil,
        keyUsage: KeyUsage? = nil,
        subjectAlternativeNames: [GeneralName]? = nil
    )
    {
        self.certificatePolicies = certificatePolicies
        self.extendedKeyUsage = extendedKeyUsage
        self.keyUsage = keyUsage
        self.subjectAlternativeNames = subjectAlternativeNames
    }
}

extension Extensions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Extensions(certificatePolicies: \(String(describing: certificatePolicies)), extendedKeyUsage: \(String(describing: extendedKeyUsage)), keyUsage: \(String(describing: keyUsage)), subjectAlternativeNames: \(String(describing: subjectAlternativeNames)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateSAMLProviderInput: Equatable {
    /// <p>The name of the provider to create.</p>
    ///         <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    ///     characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    public let name: String?
    /// <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    ///             document includes the issuer's name, expiration information, and keys that can be used
    ///             to validate the SAML authentication response (assertions) that are received from the
    ///             IdP. You must generate the metadata document using the identity management software that
    ///             is used as your organization's IdP.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    ///                 federation</a> in the <i>IAM User Guide</i>
    ///         </p>
    public let sAMLMetadataDocument: String?
    /// <p>A list of tags that you want to attach to the new IAM SAML provider.
    ///       Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    ///       <i>IAM User Guide</i>.</p>
    ///          <note>
    ///             <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    ///    fails and the resource is not created.</p>
    ///          </note>
    public let tags: [Tag]?

    public init (
        name: String? = nil,
        sAMLMetadataDocument: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.name = name
        self.sAMLMetadataDocument = sAMLMetadataDocument
        self.tags = tags
    }
}

extension CreateSAMLProviderInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSAMLProviderInput(name: \(String(describing: name)), sAMLMetadataDocument: \(String(describing: sAMLMetadataDocument)), tags: \(String(describing: tags)))"}
}
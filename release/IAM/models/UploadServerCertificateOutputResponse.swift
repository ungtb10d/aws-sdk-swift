// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a successful <a>UploadServerCertificate</a>
///       request. </p>
public struct UploadServerCertificateOutputResponse: Equatable {
    /// <p>The meta information of the uploaded server certificate without its certificate body,
    ///             certificate chain, and private key.</p>
    public let serverCertificateMetadata: ServerCertificateMetadata?
    /// <p>A list of tags that are attached to the new IAM server certificate. The returned list of tags is sorted by tag key.
    ///       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    ///       <i>IAM User Guide</i>.</p>
    public let tags: [Tag]?

    public init (
        serverCertificateMetadata: ServerCertificateMetadata? = nil,
        tags: [Tag]? = nil
    )
    {
        self.serverCertificateMetadata = serverCertificateMetadata
        self.tags = tags
    }
}

extension UploadServerCertificateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UploadServerCertificateOutputResponse(serverCertificateMetadata: \(String(describing: serverCertificateMetadata)), tags: \(String(describing: tags)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CompleteLayerUploadOutputResponse: Equatable {
    /// <p>The <code>sha256</code> digest of the image layer.</p>
    public let layerDigest: String?
    /// <p>The public registry ID associated with the request.</p>
    public let registryId: String?
    /// <p>The repository name associated with the request.</p>
    public let repositoryName: String?
    /// <p>The upload ID associated with the layer.</p>
    public let uploadId: String?

    public init (
        layerDigest: String? = nil,
        registryId: String? = nil,
        repositoryName: String? = nil,
        uploadId: String? = nil
    )
    {
        self.layerDigest = layerDigest
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.uploadId = uploadId
    }
}

extension CompleteLayerUploadOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CompleteLayerUploadOutputResponse(layerDigest: \(String(describing: layerDigest)), registryId: \(String(describing: registryId)), repositoryName: \(String(describing: repositoryName)), uploadId: \(String(describing: uploadId)))"}
}
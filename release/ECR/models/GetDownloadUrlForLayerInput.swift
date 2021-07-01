// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetDownloadUrlForLayerInput: Equatable {
    /// <p>The digest of the image layer to download.</p>
    public let layerDigest: String?
    /// <p>The AWS account ID associated with the registry that contains the image layer to
    ///             download. If you do not specify a registry, the default registry is assumed.</p>
    public let registryId: String?
    /// <p>The name of the repository that is associated with the image layer to download.</p>
    public let repositoryName: String?

    public init (
        layerDigest: String? = nil,
        registryId: String? = nil,
        repositoryName: String? = nil
    )
    {
        self.layerDigest = layerDigest
        self.registryId = registryId
        self.repositoryName = repositoryName
    }
}

extension GetDownloadUrlForLayerInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDownloadUrlForLayerInput(layerDigest: \(String(describing: layerDigest)), registryId: \(String(describing: registryId)), repositoryName: \(String(describing: repositoryName)))"}
}
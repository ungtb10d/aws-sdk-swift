// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetResourcesOutputResponse: Equatable {
    /// <p>The documents in the specified collection.</p>
    public let documents: [DocumentMetadata]?
    /// <p>The folders in the specified folder.</p>
    public let folders: [FolderMetadata]?
    /// <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    public let marker: String?

    public init (
        documents: [DocumentMetadata]? = nil,
        folders: [FolderMetadata]? = nil,
        marker: String? = nil
    )
    {
        self.documents = documents
        self.folders = folders
        self.marker = marker
    }
}

extension GetResourcesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResourcesOutputResponse(documents: \(String(describing: documents)), folders: \(String(describing: folders)), marker: \(String(describing: marker)))"}
}
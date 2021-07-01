// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAccessPreviewsOutputResponse: Equatable {
    /// <p>A list of access previews retrieved for the analyzer.</p>
    public let accessPreviews: [AccessPreviewSummary]?
    /// <p>A token used for pagination of results returned.</p>
    public let nextToken: String?

    public init (
        accessPreviews: [AccessPreviewSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.accessPreviews = accessPreviews
        self.nextToken = nextToken
    }
}

extension ListAccessPreviewsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAccessPreviewsOutputResponse(accessPreviews: \(String(describing: accessPreviews)), nextToken: \(String(describing: nextToken)))"}
}
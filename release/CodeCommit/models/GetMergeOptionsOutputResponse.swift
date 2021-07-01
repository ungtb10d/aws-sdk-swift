// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetMergeOptionsOutputResponse: Equatable {
    /// <p>The commit ID of the merge base.</p>
    public let baseCommitId: String?
    /// <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    public let destinationCommitId: String?
    /// <p>The merge option or strategy used to merge the code.</p>
    public let mergeOptions: [MergeOptionTypeEnum]?
    /// <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    public let sourceCommitId: String?

    public init (
        baseCommitId: String? = nil,
        destinationCommitId: String? = nil,
        mergeOptions: [MergeOptionTypeEnum]? = nil,
        sourceCommitId: String? = nil
    )
    {
        self.baseCommitId = baseCommitId
        self.destinationCommitId = destinationCommitId
        self.mergeOptions = mergeOptions
        self.sourceCommitId = sourceCommitId
    }
}

extension GetMergeOptionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetMergeOptionsOutputResponse(baseCommitId: \(String(describing: baseCommitId)), destinationCommitId: \(String(describing: destinationCommitId)), mergeOptions: \(String(describing: mergeOptions)), sourceCommitId: \(String(describing: sourceCommitId)))"}
}
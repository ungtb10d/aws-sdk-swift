// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about conflicts in a merge operation.</p>
public struct Conflict: Equatable {
    /// <p>Metadata about a conflict in a merge operation.</p>
    public let conflictMetadata: ConflictMetadata?
    /// <p>A list of hunks that contain the differences between files or lines causing the conflict.</p>
    public let mergeHunks: [MergeHunk]?

    public init (
        conflictMetadata: ConflictMetadata? = nil,
        mergeHunks: [MergeHunk]? = nil
    )
    {
        self.conflictMetadata = conflictMetadata
        self.mergeHunks = mergeHunks
    }
}

extension Conflict: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Conflict(conflictMetadata: \(String(describing: conflictMetadata)), mergeHunks: \(String(describing: mergeHunks)))"}
}
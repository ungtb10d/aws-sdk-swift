// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The container for the completed multipart upload details.</p>
public struct CompletedMultipartUpload: Equatable {
    /// <p>Array of CompletedPart data types.</p>
    public let parts: [CompletedPart]?

    public init (
        parts: [CompletedPart]? = nil
    )
    {
        self.parts = parts
    }
}

extension CompletedMultipartUpload: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CompletedMultipartUpload(parts: \(String(describing: parts)))"}
}
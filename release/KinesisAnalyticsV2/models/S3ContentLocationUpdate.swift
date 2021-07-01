// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an update for the Amazon S3 code content location for an application.</p>
public struct S3ContentLocationUpdate: Equatable {
    /// <p>The new Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>
    public let bucketARNUpdate: String?
    /// <p>The new file key for the object containing the application code.</p>
    public let fileKeyUpdate: String?
    /// <p>The new version of the object containing the application code.</p>
    public let objectVersionUpdate: String?

    public init (
        bucketARNUpdate: String? = nil,
        fileKeyUpdate: String? = nil,
        objectVersionUpdate: String? = nil
    )
    {
        self.bucketARNUpdate = bucketARNUpdate
        self.fileKeyUpdate = fileKeyUpdate
        self.objectVersionUpdate = objectVersionUpdate
    }
}

extension S3ContentLocationUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3ContentLocationUpdate(bucketARNUpdate: \(String(describing: bucketARNUpdate)), fileKeyUpdate: \(String(describing: fileKeyUpdate)), objectVersionUpdate: \(String(describing: objectVersionUpdate)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents all of the data describing a particular stream.</p>
public struct Stream: Equatable {
    /// <p>The Amazon Resource Name (ARN) for the stream.</p>
    public let streamArn: String?
    /// <p>A timestamp, in ISO 8601 format, for this stream.</p>
    ///          <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is
    ///       possible that a stream from another table might have the same timestamp. However, the
    ///       combination of the following three elements is guaranteed to be unique:</p>
    ///          <ul>
    ///             <li>
    ///                <p>the AWS customer ID.</p>
    ///             </li>
    ///             <li>
    ///                <p>the table name</p>
    ///             </li>
    ///             <li>
    ///                <p>the <code>StreamLabel</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let streamLabel: String?
    /// <p>The DynamoDB table with which the stream is associated.</p>
    public let tableName: String?

    public init (
        streamArn: String? = nil,
        streamLabel: String? = nil,
        tableName: String? = nil
    )
    {
        self.streamArn = streamArn
        self.streamLabel = streamLabel
        self.tableName = tableName
    }
}

extension Stream: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Stream(streamArn: \(String(describing: streamArn)), streamLabel: \(String(describing: streamLabel)), tableName: \(String(describing: tableName)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Configuration options for configure Cognito streams.
public struct CognitoStreams: Equatable {
    /// The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
    public let roleArn: String?
    /// The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
    public let streamName: String?
    /// Status of the Cognito streams. Valid values are:
    ///       <p>ENABLED - Streaming of updates to identity pool is enabled.</p>
    ///       <p>DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.</p>
    public let streamingStatus: StreamingStatus?

    public init (
        roleArn: String? = nil,
        streamName: String? = nil,
        streamingStatus: StreamingStatus? = nil
    )
    {
        self.roleArn = roleArn
        self.streamName = streamName
        self.streamingStatus = streamingStatus
    }
}

extension CognitoStreams: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CognitoStreams(roleArn: \(String(describing: roleArn)), streamName: \(String(describing: streamName)), streamingStatus: \(String(describing: streamingStatus)))"}
}
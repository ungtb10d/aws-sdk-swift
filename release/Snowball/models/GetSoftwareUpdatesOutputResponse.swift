// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSoftwareUpdatesOutputResponse: Equatable {
    /// <p>The Amazon S3 presigned URL for the update file associated with the specified
    ///       <code>JobId</code> value. The software update will be available for 2 days after this request is made.
    ///       To access an update after the 2 days have passed, you'll have to make another call to <code>GetSoftwareUpdates</code>.</p>
    public let updatesURI: String?

    public init (
        updatesURI: String? = nil
    )
    {
        self.updatesURI = updatesURI
    }
}

extension GetSoftwareUpdatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSoftwareUpdatesOutputResponse(updatesURI: \(String(describing: updatesURI)))"}
}
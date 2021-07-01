// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SendMessageOutputResponse: Equatable {
    /// <p>The time when the message was sent.</p>
    ///         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    ///             2019-11-08T02:41:28.172Z.</p>
    public let absoluteTime: String?
    /// <p>The ID of the message.</p>
    public let id: String?

    public init (
        absoluteTime: String? = nil,
        id: String? = nil
    )
    {
        self.absoluteTime = absoluteTime
        self.id = id
    }
}

extension SendMessageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendMessageOutputResponse(absoluteTime: \(String(describing: absoluteTime)), id: \(String(describing: id)))"}
}
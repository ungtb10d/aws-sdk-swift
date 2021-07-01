// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListLogSubscriptionsOutputResponse: Equatable {
    /// <p>A list of active <a>LogSubscription</a> objects for calling the AWS
    ///       account.</p>
    public let logSubscriptions: [LogSubscription]?
    /// <p>The token for the next set of items to return.</p>
    public let nextToken: String?

    public init (
        logSubscriptions: [LogSubscription]? = nil,
        nextToken: String? = nil
    )
    {
        self.logSubscriptions = logSubscriptions
        self.nextToken = nextToken
    }
}

extension ListLogSubscriptionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListLogSubscriptionsOutputResponse(logSubscriptions: \(String(describing: logSubscriptions)), nextToken: \(String(describing: nextToken)))"}
}
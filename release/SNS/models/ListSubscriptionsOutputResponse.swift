// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Response for ListSubscriptions action</p>
public struct ListSubscriptionsOutputResponse: Equatable {
    /// <p>Token to pass along to the next <code>ListSubscriptions</code> request. This element
    ///             is returned if there are more subscriptions to retrieve.</p>
    public let nextToken: String?
    /// <p>A list of subscriptions.</p>
    public let subscriptions: [Subscription]?

    public init (
        nextToken: String? = nil,
        subscriptions: [Subscription]? = nil
    )
    {
        self.nextToken = nextToken
        self.subscriptions = subscriptions
    }
}

extension ListSubscriptionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSubscriptionsOutputResponse(nextToken: \(String(describing: nextToken)), subscriptions: \(String(describing: subscriptions)))"}
}
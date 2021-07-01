// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DeleteEventSubscriptionInput: Equatable {
    /// <p>The name of the RDS event notification subscription you want to delete.</p>
    public let subscriptionName: String?

    public init (
        subscriptionName: String? = nil
    )
    {
        self.subscriptionName = subscriptionName
    }
}

extension DeleteEventSubscriptionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteEventSubscriptionInput(subscriptionName: \(String(describing: subscriptionName)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchEnableStandardsOutputResponse: Equatable {
    /// <p>The details of the standards subscriptions that were enabled.</p>
    public let standardsSubscriptions: [StandardsSubscription]?

    public init (
        standardsSubscriptions: [StandardsSubscription]? = nil
    )
    {
        self.standardsSubscriptions = standardsSubscriptions
    }
}

extension BatchEnableStandardsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchEnableStandardsOutputResponse(standardsSubscriptions: \(String(describing: standardsSubscriptions)))"}
}
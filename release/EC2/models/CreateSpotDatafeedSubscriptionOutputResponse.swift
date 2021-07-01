// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of CreateSpotDatafeedSubscription.</p>
public struct CreateSpotDatafeedSubscriptionOutputResponse: Equatable {
    /// <p>The Spot Instance data feed subscription.</p>
    public let spotDatafeedSubscription: SpotDatafeedSubscription?

    public init (
        spotDatafeedSubscription: SpotDatafeedSubscription? = nil
    )
    {
        self.spotDatafeedSubscription = spotDatafeedSubscription
    }
}

extension CreateSpotDatafeedSubscriptionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSpotDatafeedSubscriptionOutputResponse(spotDatafeedSubscription: \(String(describing: spotDatafeedSubscription)))"}
}
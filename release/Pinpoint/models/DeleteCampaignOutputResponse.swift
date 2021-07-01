// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteCampaignOutputResponse: Equatable {
    /// <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    public let campaignResponse: CampaignResponse?

    public init (
        campaignResponse: CampaignResponse? = nil
    )
    {
        self.campaignResponse = campaignResponse
    }
}

extension DeleteCampaignOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteCampaignOutputResponse(campaignResponse: \(String(describing: campaignResponse)))"}
}
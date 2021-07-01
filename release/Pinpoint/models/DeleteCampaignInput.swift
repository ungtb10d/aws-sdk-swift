// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteCampaignInput: Equatable {
    /// <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    public let applicationId: String?
    /// <p>The unique identifier for the campaign.</p>
    public let campaignId: String?

    public init (
        applicationId: String? = nil,
        campaignId: String? = nil
    )
    {
        self.applicationId = applicationId
        self.campaignId = campaignId
    }
}

extension DeleteCampaignInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteCampaignInput(applicationId: \(String(describing: applicationId)), campaignId: \(String(describing: campaignId)))"}
}
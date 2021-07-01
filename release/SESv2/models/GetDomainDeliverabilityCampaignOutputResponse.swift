// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that contains all the deliverability data for a specific campaign. This data
///             is available for a campaign only if the campaign sent email by using a domain that the
///             Deliverability dashboard is enabled for.</p>
public struct GetDomainDeliverabilityCampaignOutputResponse: Equatable {
    /// <p>An object that contains the deliverability data for the campaign.</p>
    public let domainDeliverabilityCampaign: DomainDeliverabilityCampaign?

    public init (
        domainDeliverabilityCampaign: DomainDeliverabilityCampaign? = nil
    )
    {
        self.domainDeliverabilityCampaign = domainDeliverabilityCampaign
    }
}

extension GetDomainDeliverabilityCampaignOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDomainDeliverabilityCampaignOutputResponse(domainDeliverabilityCampaign: \(String(describing: domainDeliverabilityCampaign)))"}
}
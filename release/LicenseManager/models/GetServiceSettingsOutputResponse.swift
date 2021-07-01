// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetServiceSettingsOutputResponse: Equatable {
    /// <p>Indicates whether cross-account discovery is enabled.</p>
    public let enableCrossAccountsDiscovery: Bool?
    /// <p>Amazon Resource Name (ARN) of the AWS resource share. The License Manager management account
    ///          provides member accounts with access to this share.</p>
    public let licenseManagerResourceShareArn: String?
    /// <p>Indicates whether AWS Organizations is integrated with License Manager for
    ///          cross-account discovery.</p>
    public let organizationConfiguration: OrganizationConfiguration?
    /// <p>Regional S3 bucket path for storing reports, license trail event data, discovery data,
    ///          and so on.</p>
    public let s3BucketArn: String?
    /// <p>SNS topic configured to receive notifications from License Manager.</p>
    public let snsTopicArn: String?

    public init (
        enableCrossAccountsDiscovery: Bool? = nil,
        licenseManagerResourceShareArn: String? = nil,
        organizationConfiguration: OrganizationConfiguration? = nil,
        s3BucketArn: String? = nil,
        snsTopicArn: String? = nil
    )
    {
        self.enableCrossAccountsDiscovery = enableCrossAccountsDiscovery
        self.licenseManagerResourceShareArn = licenseManagerResourceShareArn
        self.organizationConfiguration = organizationConfiguration
        self.s3BucketArn = s3BucketArn
        self.snsTopicArn = snsTopicArn
    }
}

extension GetServiceSettingsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetServiceSettingsOutputResponse(enableCrossAccountsDiscovery: \(String(describing: enableCrossAccountsDiscovery)), licenseManagerResourceShareArn: \(String(describing: licenseManagerResourceShareArn)), organizationConfiguration: \(String(describing: organizationConfiguration)), s3BucketArn: \(String(describing: s3BucketArn)), snsTopicArn: \(String(describing: snsTopicArn)))"}
}
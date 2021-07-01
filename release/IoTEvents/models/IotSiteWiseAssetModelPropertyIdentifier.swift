// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       The asset model property identifer of the input routed from AWS IoT SiteWise.
///     </p>
public struct IotSiteWiseAssetModelPropertyIdentifier: Equatable {
    /// <p>
    ///       The ID of the AWS IoT SiteWise asset model.
    ///     </p>
    public let assetModelId: String?
    /// <p>
    ///       The ID of the AWS IoT SiteWise asset property.
    ///     </p>
    public let propertyId: String?

    public init (
        assetModelId: String? = nil,
        propertyId: String? = nil
    )
    {
        self.assetModelId = assetModelId
        self.propertyId = propertyId
    }
}

extension IotSiteWiseAssetModelPropertyIdentifier: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IotSiteWiseAssetModelPropertyIdentifier(assetModelId: \(String(describing: assetModelId)), propertyId: \(String(describing: propertyId)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateSiteOutputResponse: Equatable {
    /// <p>Information about the site.</p>
    public let site: Site?

    public init (
        site: Site? = nil
    )
    {
        self.site = site
    }
}

extension CreateSiteOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSiteOutputResponse(site: \(String(describing: site)))"}
}
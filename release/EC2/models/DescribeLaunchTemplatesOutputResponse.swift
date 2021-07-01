// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeLaunchTemplatesOutputResponse: Equatable {
    /// <p>Information about the launch templates.</p>
    public let launchTemplates: [LaunchTemplate]?
    /// <p>The token to use to retrieve the next page of results. This value is
    ///                 <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        launchTemplates: [LaunchTemplate]? = nil,
        nextToken: String? = nil
    )
    {
        self.launchTemplates = launchTemplates
        self.nextToken = nextToken
    }
}

extension DescribeLaunchTemplatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeLaunchTemplatesOutputResponse(launchTemplates: \(String(describing: launchTemplates)), nextToken: \(String(describing: nextToken)))"}
}
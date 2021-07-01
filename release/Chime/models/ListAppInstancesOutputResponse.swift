// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAppInstancesOutputResponse: Equatable {
    /// <p>The information for each <code>AppInstance</code>.</p>
    public let appInstances: [AppInstanceSummary]?
    /// <p>The token passed by previous API requests until the maximum number of <code>AppInstance</code>s is reached.</p>
    public let nextToken: String?

    public init (
        appInstances: [AppInstanceSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.appInstances = appInstances
        self.nextToken = nextToken
    }
}

extension ListAppInstancesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAppInstancesOutputResponse(appInstances: \(String(describing: appInstances)), nextToken: \(String(describing: nextToken)))"}
}
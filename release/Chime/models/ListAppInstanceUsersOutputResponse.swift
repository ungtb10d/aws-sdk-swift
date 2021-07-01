// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAppInstanceUsersOutputResponse: Equatable {
    /// <p>The ARN of the <code>AppInstance</code>.</p>
    public let appInstanceArn: String?
    /// <p>The information for each requested <code>AppInstanceUser</code>.</p>
    public let appInstanceUsers: [AppInstanceUserSummary]?
    /// <p>The token passed by previous API calls until all requested users are returned.</p>
    public let nextToken: String?

    public init (
        appInstanceArn: String? = nil,
        appInstanceUsers: [AppInstanceUserSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.appInstanceArn = appInstanceArn
        self.appInstanceUsers = appInstanceUsers
        self.nextToken = nextToken
    }
}

extension ListAppInstanceUsersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAppInstanceUsersOutputResponse(appInstanceArn: \(String(describing: appInstanceArn)), appInstanceUsers: \(String(describing: appInstanceUsers)), nextToken: \(String(describing: nextToken)))"}
}
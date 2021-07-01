// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListUserProfilesOutputResponse: Equatable {
    /// <p>The continuation token to use when requesting the next set of results, if there are
    ///       more results to be returned.</p>
    public let nextToken: String?
    /// <p>All the user profiles configured in AWS CodeStar for an AWS account.</p>
    public let userProfiles: [UserProfileSummary]?

    public init (
        nextToken: String? = nil,
        userProfiles: [UserProfileSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.userProfiles = userProfiles
    }
}

extension ListUserProfilesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListUserProfilesOutputResponse(nextToken: \(String(describing: nextToken)), userProfiles: \(String(describing: userProfiles)))"}
}
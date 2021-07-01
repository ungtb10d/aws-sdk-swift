// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetPullRequestApprovalStatesInput: Equatable {
    /// <p>The system-generated ID for the pull request.</p>
    public let pullRequestId: String?
    /// <p>The system-generated ID for the pull request revision.</p>
    public let revisionId: String?

    public init (
        pullRequestId: String? = nil,
        revisionId: String? = nil
    )
    {
        self.pullRequestId = pullRequestId
        self.revisionId = revisionId
    }
}

extension GetPullRequestApprovalStatesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPullRequestApprovalStatesInput(pullRequestId: \(String(describing: pullRequestId)), revisionId: \(String(describing: revisionId)))"}
}
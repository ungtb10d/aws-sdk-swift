// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdatePullRequestStatusInput: Equatable {
    /// <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    public let pullRequestId: String?
    /// <p>The status of the pull request. The only valid operations are to update the status
    ///             from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or
    ///             from <code>CLOSED</code> to <code>CLOSED</code>.</p>
    public let pullRequestStatus: PullRequestStatusEnum?

    public init (
        pullRequestId: String? = nil,
        pullRequestStatus: PullRequestStatusEnum? = nil
    )
    {
        self.pullRequestId = pullRequestId
        self.pullRequestStatus = pullRequestStatus
    }
}

extension UpdatePullRequestStatusInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdatePullRequestStatusInput(pullRequestId: \(String(describing: pullRequestId)), pullRequestStatus: \(String(describing: pullRequestStatus)))"}
}
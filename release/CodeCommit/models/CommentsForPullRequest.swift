// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Returns information about comments on a pull request.</p>
public struct CommentsForPullRequest: Equatable {
    /// <p>The full blob ID of the file on which you want to comment on the source commit.</p>
    public let afterBlobId: String?
    /// <p>The full commit ID of the commit that was the tip of the source branch at the time the
    ///             comment was made. </p>
    public let afterCommitId: String?
    /// <p>The full blob ID of the file on which you want to comment on the destination commit.</p>
    public let beforeBlobId: String?
    /// <p>The full commit ID of the commit that was the tip of the destination branch when the
    ///             pull request was created. This commit is superceded by the after commit in the source
    ///             branch when and if you merge the source branch into the destination branch.</p>
    public let beforeCommitId: String?
    /// <p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>
    public let comments: [Comment]?
    /// <p>Location information about the comment on the pull request, including the file name,
    ///             line number, and whether the version of the file where the comment was made is BEFORE
    ///             (destination branch) or AFTER (source branch).</p>
    public let location: Location?
    /// <p>The system-generated ID of the pull request.</p>
    public let pullRequestId: String?
    /// <p>The name of the repository that contains the pull request.</p>
    public let repositoryName: String?

    public init (
        afterBlobId: String? = nil,
        afterCommitId: String? = nil,
        beforeBlobId: String? = nil,
        beforeCommitId: String? = nil,
        comments: [Comment]? = nil,
        location: Location? = nil,
        pullRequestId: String? = nil,
        repositoryName: String? = nil
    )
    {
        self.afterBlobId = afterBlobId
        self.afterCommitId = afterCommitId
        self.beforeBlobId = beforeBlobId
        self.beforeCommitId = beforeCommitId
        self.comments = comments
        self.location = location
        self.pullRequestId = pullRequestId
        self.repositoryName = repositoryName
    }
}

extension CommentsForPullRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CommentsForPullRequest(afterBlobId: \(String(describing: afterBlobId)), afterCommitId: \(String(describing: afterCommitId)), beforeBlobId: \(String(describing: beforeBlobId)), beforeCommitId: \(String(describing: beforeCommitId)), comments: \(String(describing: comments)), location: \(String(describing: location)), pullRequestId: \(String(describing: pullRequestId)), repositoryName: \(String(describing: repositoryName)))"}
}
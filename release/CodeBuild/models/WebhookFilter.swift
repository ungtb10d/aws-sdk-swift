// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> A filter used to determine which webhooks trigger a build. </p>
public struct WebhookFilter: Equatable {
    /// <p> Used to indicate that the <code>pattern</code> determines which webhook events do not
    ///             trigger a build. If true, then a webhook event that does not match the
    ///                 <code>pattern</code> triggers a build. If false, then a webhook event that matches
    ///             the <code>pattern</code> triggers a build. </p>
    public let excludeMatchedPattern: Bool?
    /// <p> For a <code>WebHookFilter</code> that uses <code>EVENT</code> type, a comma-separated
    ///             string that specifies one or more events. For example, the webhook filter <code>PUSH,
    ///                 PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> allows all push, pull request
    ///             created, and pull request updated events to trigger a build. </p>
    ///         <p> For a <code>WebHookFilter</code> that uses any of the other filter types, a regular
    ///             expression pattern. For example, a <code>WebHookFilter</code> that uses
    ///                 <code>HEAD_REF</code> for its <code>type</code> and the pattern
    ///                 <code>^refs/heads/</code> triggers a build when the head reference is a branch with
    ///             a reference name <code>refs/heads/branch-name</code>. </p>
    public let pattern: String?
    /// <p> The type of webhook filter. There are six webhook filter types: <code>EVENT</code>,
    ///                 <code>ACTOR_ACCOUNT_ID</code>, <code>HEAD_REF</code>, <code>BASE_REF</code>,
    ///                 <code>FILE_PATH</code>, and <code>COMMIT_MESSAGE</code>. </p>
    ///         <dl>
    ///             <dt>
    ///                EVENT
    ///             </dt>
    ///             <dd>
    ///                     <p> A webhook event triggers a build when the provided <code>pattern</code>
    ///                         matches one of five event types: <code>PUSH</code>,
    ///                             <code>PULL_REQUEST_CREATED</code>, <code>PULL_REQUEST_UPDATED</code>,
    ///                             <code>PULL_REQUEST_REOPENED</code>, and
    ///                         <code>PULL_REQUEST_MERGED</code>. The <code>EVENT</code> patterns are
    ///                         specified as a comma-separated string. For example, <code>PUSH,
    ///                             PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> filters all push, pull
    ///                         request created, and pull request updated events. </p>
    ///                     <note>
    ///                         <p> The <code>PULL_REQUEST_REOPENED</code> works with GitHub and GitHub
    ///                             Enterprise only. </p>
    ///                     </note>
    ///                 </dd>
    ///             <dt>
    ///                ACTOR_ACCOUNT_ID
    ///             </dt>
    ///             <dd>
    ///                     <p> A webhook event triggers a build when a GitHub, GitHub Enterprise, or
    ///                         Bitbucket account ID matches the regular expression <code>pattern</code>.
    ///                     </p>
    ///                 </dd>
    ///             <dt>
    ///                HEAD_REF
    ///             </dt>
    ///             <dd>
    ///                     <p> A webhook event triggers a build when the head reference matches the
    ///                         regular expression <code>pattern</code>. For example,
    ///                             <code>refs/heads/branch-name</code> and <code>refs/tags/tag-name</code>. </p>
    ///                     <p> Works with GitHub and GitHub Enterprise push, GitHub and GitHub
    ///                         Enterprise pull request, Bitbucket push, and Bitbucket pull request events.
    ///                     </p>
    ///                 </dd>
    ///             <dt>
    ///                BASE_REF
    ///             </dt>
    ///             <dd>
    ///                     <p> A webhook event triggers a build when the base reference matches the
    ///                         regular expression <code>pattern</code>. For example,
    ///                             <code>refs/heads/branch-name</code>. </p>
    ///                     <note>
    ///                         <p> Works with pull request events only. </p>
    ///                     </note>
    ///                 </dd>
    ///             <dt>
    ///                FILE_PATH
    ///             </dt>
    ///             <dd>
    ///                     <p> A webhook triggers a build when the path of a changed file matches the
    ///                         regular expression <code>pattern</code>. </p>
    ///                     <note>
    ///                         <p> Works with GitHub and Bitbucket events push and pull requests events.
    ///                             Also works with GitHub Enterprise push events, but does not work with
    ///                             GitHub Enterprise pull request events. </p>
    ///                     </note>
    ///                 </dd>
    ///             <dt>COMMIT_MESSAGE</dt>
    ///             <dd>
    ///                     <p>A webhook triggers a build when the head commit message matches the
    ///                         regular expression <code>pattern</code>.</p>
    ///                     <note>
    ///                         <p> Works with GitHub and Bitbucket events push and pull requests events.
    ///                             Also works with GitHub Enterprise push events, but does not work with
    ///                             GitHub Enterprise pull request events. </p>
    ///                     </note>
    ///                 </dd>
    ///          </dl>
    public let type: WebhookFilterType?

    public init (
        excludeMatchedPattern: Bool? = nil,
        pattern: String? = nil,
        type: WebhookFilterType? = nil
    )
    {
        self.excludeMatchedPattern = excludeMatchedPattern
        self.pattern = pattern
        self.type = type
    }
}

extension WebhookFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WebhookFilter(excludeMatchedPattern: \(String(describing: excludeMatchedPattern)), pattern: \(String(describing: pattern)), type: \(String(describing: type)))"}
}
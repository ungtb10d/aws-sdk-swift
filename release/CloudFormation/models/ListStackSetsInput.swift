// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListStackSetsInput: Equatable {
    /// <p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the management account or as a delegated administrator in a member account.</p>
    ///          <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
    ///          <ul>
    ///             <li>
    ///                <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
    ///                <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
    ///             </li>
    ///          </ul>
    public let callAs: CallAs?
    /// <p>The maximum number of results to be returned with a single call. If the number of
    ///          available results exceeds this maximum, the response includes a <code>NextToken</code>
    ///          value that you can assign to the <code>NextToken</code> request parameter to get the next
    ///          set of results.</p>
    public let maxResults: Int?
    /// <p>If the previous paginated request didn't return all of the remaining results, the
    ///          response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
    ///          next set of results, call <code>ListStackSets</code> again and assign that token to the
    ///          request object's <code>NextToken</code> parameter. If there are no remaining results, the
    ///          previous response object's <code>NextToken</code> parameter is set to
    ///          <code>null</code>.</p>
    public let nextToken: String?
    /// <p>The status of the stack sets that you want to get summary information
    ///          about.</p>
    public let status: StackSetStatus?

    public init (
        callAs: CallAs? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        status: StackSetStatus? = nil
    )
    {
        self.callAs = callAs
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }
}

extension ListStackSetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListStackSetsInput(callAs: \(String(describing: callAs)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), status: \(String(describing: status)))"}
}
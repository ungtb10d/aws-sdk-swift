// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRobotApplicationsOutputResponse: Equatable {
    /// <p>If the previous paginated request did not return all of the remaining results, the
    ///          response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    ///          next set of results, call <code>ListRobotApplications</code> again and assign that token to
    ///          the request object's <code>nextToken</code> parameter. If there are no remaining results,
    ///          the previous response object's NextToken parameter is set to null. </p>
    public let nextToken: String?
    /// <p>A list of robot application summaries that meet the criteria of the request.</p>
    public let robotApplicationSummaries: [RobotApplicationSummary]?

    public init (
        nextToken: String? = nil,
        robotApplicationSummaries: [RobotApplicationSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.robotApplicationSummaries = robotApplicationSummaries
    }
}

extension ListRobotApplicationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRobotApplicationsOutputResponse(nextToken: \(String(describing: nextToken)), robotApplicationSummaries: \(String(describing: robotApplicationSummaries)))"}
}
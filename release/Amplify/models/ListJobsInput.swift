// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> The request structure for the list jobs request. </p>
public struct ListJobsInput: Equatable {
    /// <p> The unique ID for an Amplify app. </p>
    public let appId: String?
    /// <p> The name for a branch. </p>
    public let branchName: String?
    /// <p> The maximum number of records to list in a single response. </p>
    public let maxResults: Int
    /// <p> A pagination token. Set to null to start listing steps from the start. If a non-null
    ///             pagination token is returned in a result, pass its value in here to list more steps.
    ///         </p>
    public let nextToken: String?

    public init (
        appId: String? = nil,
        branchName: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.appId = appId
        self.branchName = branchName
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListJobsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListJobsInput(appId: \(String(describing: appId)), branchName: \(String(describing: branchName)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
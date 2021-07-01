// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRelationalDatabaseBlueprintsOutputResponse: Equatable {
    /// <p>An object describing the result of your get relational database blueprints request.</p>
    public let blueprints: [RelationalDatabaseBlueprint]?
    /// <p>The token to advance to the next page of results from your request.</p>
    ///          <p>A next page token is not returned if there are no more results to display.</p>
    ///          <p>To get the next page of results, perform another
    ///         <code>GetRelationalDatabaseBlueprints</code> request and specify the next page token using
    ///       the <code>pageToken</code> parameter.</p>
    public let nextPageToken: String?

    public init (
        blueprints: [RelationalDatabaseBlueprint]? = nil,
        nextPageToken: String? = nil
    )
    {
        self.blueprints = blueprints
        self.nextPageToken = nextPageToken
    }
}

extension GetRelationalDatabaseBlueprintsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRelationalDatabaseBlueprintsOutputResponse(blueprints: \(String(describing: blueprints)), nextPageToken: \(String(describing: nextPageToken)))"}
}
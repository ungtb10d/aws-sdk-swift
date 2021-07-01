// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeWorkspacesConnectionStatusOutputResponse: Equatable {
    /// <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return. </p>
    public let nextToken: String?
    /// <p>Information about the connection status of the WorkSpace.</p>
    public let workspacesConnectionStatus: [WorkspaceConnectionStatus]?

    public init (
        nextToken: String? = nil,
        workspacesConnectionStatus: [WorkspaceConnectionStatus]? = nil
    )
    {
        self.nextToken = nextToken
        self.workspacesConnectionStatus = workspacesConnectionStatus
    }
}

extension DescribeWorkspacesConnectionStatusOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeWorkspacesConnectionStatusOutputResponse(nextToken: \(String(describing: nextToken)), workspacesConnectionStatus: \(String(describing: workspacesConnectionStatus)))"}
}
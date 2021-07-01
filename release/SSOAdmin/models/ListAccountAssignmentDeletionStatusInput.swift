// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAccountAssignmentDeletionStatusInput: Equatable {
    /// <p>Filters results based on the passed attribute value.</p>
    public let filter: OperationStatusFilter?
    /// <p>The ARN of the SSO instance under which the operation will be executed.
    ///       For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    /// Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
    public let instanceArn: String?
    /// <p>The maximum number of results to display for the assignment.</p>
    public let maxResults: Int?
    /// <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    public let nextToken: String?

    public init (
        filter: OperationStatusFilter? = nil,
        instanceArn: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.filter = filter
        self.instanceArn = instanceArn
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListAccountAssignmentDeletionStatusInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAccountAssignmentDeletionStatusInput(filter: \(String(describing: filter)), instanceArn: \(String(describing: instanceArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}
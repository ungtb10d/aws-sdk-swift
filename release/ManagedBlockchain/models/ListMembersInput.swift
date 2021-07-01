// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListMembersInput: Equatable {
    /// <p>An optional Boolean value. If provided, the request is limited either to
    ///          members that the current AWS account owns (<code>true</code>) or that other AWS accounts
    ///          own (<code>false</code>). If omitted, all members are listed.</p>
    public let isOwned: Bool?
    /// <p>The maximum number of members to return in the request.</p>
    public let maxResults: Int?
    /// <p>The optional name of the member to list.</p>
    public let name: String?
    /// <p>The unique identifier of the network for which to list members.</p>
    public let networkId: String?
    /// <p>The pagination token that indicates the next set of results to retrieve.</p>
    public let nextToken: String?
    /// <p>An optional status specifier. If provided, only members currently in this status are listed.</p>
    public let status: MemberStatus?

    public init (
        isOwned: Bool? = nil,
        maxResults: Int? = nil,
        name: String? = nil,
        networkId: String? = nil,
        nextToken: String? = nil,
        status: MemberStatus? = nil
    )
    {
        self.isOwned = isOwned
        self.maxResults = maxResults
        self.name = name
        self.networkId = networkId
        self.nextToken = nextToken
        self.status = status
    }
}

extension ListMembersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListMembersInput(isOwned: \(String(describing: isOwned)), maxResults: \(String(describing: maxResults)), name: \(String(describing: name)), networkId: \(String(describing: networkId)), nextToken: \(String(describing: nextToken)), status: \(String(describing: status)))"}
}
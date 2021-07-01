// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListMembersOutputResponse: Equatable {
    /// <p>A list of members.</p>
    public let members: [Member]?
    /// <p>The pagination parameter to be used on the next list operation to retrieve more
    ///       items.</p>
    public let nextToken: String?

    public init (
        members: [Member]? = nil,
        nextToken: String? = nil
    )
    {
        self.members = members
        self.nextToken = nextToken
    }
}

extension ListMembersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListMembersOutputResponse(members: \(String(describing: members)), nextToken: \(String(describing: nextToken)))"}
}
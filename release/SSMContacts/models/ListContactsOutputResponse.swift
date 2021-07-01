// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListContactsOutputResponse: Equatable {
    /// <p>A list of the contacts and escalation plans in your Incident Manager account.</p>
    public let contacts: [Contact]?
    /// <p>The pagination token to continue to the next page of results.</p>
    public let nextToken: String?

    public init (
        contacts: [Contact]? = nil,
        nextToken: String? = nil
    )
    {
        self.contacts = contacts
        self.nextToken = nextToken
    }
}

extension ListContactsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListContactsOutputResponse(contacts: \(String(describing: contacts)), nextToken: \(String(describing: nextToken)))"}
}
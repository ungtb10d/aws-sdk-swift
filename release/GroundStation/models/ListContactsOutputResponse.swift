// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p/>
public struct ListContactsOutputResponse: Equatable {
    /// <p>List of contacts.</p>
    public let contactList: [ContactData]?
    /// <p>Next token returned in the response of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    public let nextToken: String?

    public init (
        contactList: [ContactData]? = nil,
        nextToken: String? = nil
    )
    {
        self.contactList = contactList
        self.nextToken = nextToken
    }
}

extension ListContactsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListContactsOutputResponse(contactList: \(String(describing: contactList)), nextToken: \(String(describing: nextToken)))"}
}
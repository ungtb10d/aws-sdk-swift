// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetContactInput: Equatable {
    /// <p>The name of the contact list to which the contact belongs.</p>
    public let contactListName: String?
    /// <p>The contact's email addres.</p>
    public let emailAddress: String?

    public init (
        contactListName: String? = nil,
        emailAddress: String? = nil
    )
    {
        self.contactListName = contactListName
        self.emailAddress = emailAddress
    }
}

extension GetContactInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetContactInput(contactListName: \(String(describing: contactListName)), emailAddress: \(String(describing: emailAddress)))"}
}
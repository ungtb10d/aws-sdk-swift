// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisableLDAPSInput: Equatable {
    /// <p>The identifier of the directory.</p>
    public let directoryId: String?
    /// <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    ///       supported.</p>
    public let type: LDAPSType?

    public init (
        directoryId: String? = nil,
        type: LDAPSType? = nil
    )
    {
        self.directoryId = directoryId
        self.type = type
    }
}

extension DisableLDAPSInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableLDAPSInput(directoryId: \(String(describing: directoryId)), type: \(String(describing: type)))"}
}
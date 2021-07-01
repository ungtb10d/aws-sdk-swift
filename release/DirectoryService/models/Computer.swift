// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about a computer account in a directory.</p>
public struct Computer: Equatable {
    /// <p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the
    ///             computer account.</p>
    public let computerAttributes: [Attribute]?
    /// <p>The identifier of the computer.</p>
    public let computerId: String?
    /// <p>The computer name.</p>
    public let computerName: String?

    public init (
        computerAttributes: [Attribute]? = nil,
        computerId: String? = nil,
        computerName: String? = nil
    )
    {
        self.computerAttributes = computerAttributes
        self.computerId = computerId
        self.computerName = computerName
    }
}

extension Computer: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Computer(computerAttributes: \(String(describing: computerAttributes)), computerId: \(String(describing: computerId)), computerName: \(String(describing: computerName)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetAccessControlEffectInput: Equatable {
    /// <p>The access protocol action. Valid values include <code>ActiveSync</code>,
    ///             <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
    ///             <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    public let action: String?
    /// <p>The IPv4 address.</p>
    public let ipAddress: String?
    /// <p>The identifier for the organization.</p>
    public let organizationId: String?
    /// <p>The user ID.</p>
    public let userId: String?

    public init (
        action: String? = nil,
        ipAddress: String? = nil,
        organizationId: String? = nil,
        userId: String? = nil
    )
    {
        self.action = action
        self.ipAddress = ipAddress
        self.organizationId = organizationId
        self.userId = userId
    }
}

extension GetAccessControlEffectInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAccessControlEffectInput(action: \(String(describing: action)), ipAddress: \(String(describing: ipAddress)), organizationId: \(String(describing: organizationId)), userId: \(String(describing: userId)))"}
}
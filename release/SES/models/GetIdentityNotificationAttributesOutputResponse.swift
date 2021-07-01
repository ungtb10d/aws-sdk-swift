// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the notification attributes for a list of identities.</p>
public struct GetIdentityNotificationAttributesOutputResponse: Equatable {
    /// <p>A map of Identity to IdentityNotificationAttributes.</p>
    public let notificationAttributes: [String:IdentityNotificationAttributes]?

    public init (
        notificationAttributes: [String:IdentityNotificationAttributes]? = nil
    )
    {
        self.notificationAttributes = notificationAttributes
    }
}

extension GetIdentityNotificationAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetIdentityNotificationAttributesOutputResponse(notificationAttributes: \(String(describing: notificationAttributes)))"}
}
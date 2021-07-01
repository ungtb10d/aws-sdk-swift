// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Set of options which defines notification preferences of given action.</p>
public struct NotificationOptions: Equatable {
    /// <p>Text value to be included in the email body.</p>
    public let emailMessage: String?
    /// <p>Boolean value to indicate an email notification should be sent to the
    ///             receipients.</p>
    public let sendEmail: Bool

    public init (
        emailMessage: String? = nil,
        sendEmail: Bool = false
    )
    {
        self.emailMessage = emailMessage
        self.sendEmail = sendEmail
    }
}

extension NotificationOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotificationOptions(emailMessage: \(String(describing: emailMessage)), sendEmail: \(String(describing: sendEmail)))"}
}
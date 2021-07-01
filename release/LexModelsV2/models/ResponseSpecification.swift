// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies a list of message groups that Amazon Lex uses to respond the
///          user input.</p>
public struct ResponseSpecification: Equatable {
    /// <p>Indicates whether the user can interrupt a speech response from
    ///          Amazon Lex.</p>
    public let allowInterrupt: Bool?
    /// <p>A collection of responses that Amazon Lex can send to the user. Amazon Lex
    ///          chooses the actual response to send at runtime.</p>
    public let messageGroups: [MessageGroup]?

    public init (
        allowInterrupt: Bool? = nil,
        messageGroups: [MessageGroup]? = nil
    )
    {
        self.allowInterrupt = allowInterrupt
        self.messageGroups = messageGroups
    }
}

extension ResponseSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResponseSpecification(allowInterrupt: \(String(describing: allowInterrupt)), messageGroups: \(String(describing: messageGroups)))"}
}
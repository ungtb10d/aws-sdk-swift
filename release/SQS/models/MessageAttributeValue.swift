// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code>
///                <a>SendMessage</a>.</code>
///          </p>
///          <p>
///             <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
public struct MessageAttributeValue: Equatable {
    /// <p>Not implemented. Reserved for future use.</p>
    public let binaryListValues: [Data]?
    /// <p>Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.</p>
    public let binaryValue: Data?
    /// <p>Amazon SQS supports the following logical data types: <code>String</code>, <code>Number</code>, and <code>Binary</code>. For the <code>Number</code> data type, you must use <code>StringValue</code>.</p>
    ///          <p>You can also append custom labels. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes">Amazon SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
    public let dataType: String?
    /// <p>Not implemented. Reserved for future use.</p>
    public let stringListValues: [String]?
    /// <p>Strings are Unicode with UTF-8 binary encoding. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">ASCII Printable Characters</a>.</p>
    public let stringValue: String?

    public init (
        binaryListValues: [Data]? = nil,
        binaryValue: Data? = nil,
        dataType: String? = nil,
        stringListValues: [String]? = nil,
        stringValue: String? = nil
    )
    {
        self.binaryListValues = binaryListValues
        self.binaryValue = binaryValue
        self.dataType = dataType
        self.stringListValues = stringListValues
        self.stringValue = stringValue
    }
}

extension MessageAttributeValue: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MessageAttributeValue(binaryListValues: \(String(describing: binaryListValues)), binaryValue: \(String(describing: binaryValue)), dataType: \(String(describing: dataType)), stringListValues: \(String(describing: stringListValues)), stringValue: \(String(describing: stringValue)))"}
}
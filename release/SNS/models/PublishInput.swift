// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input for Publish action.</p>
public struct PublishInput: Equatable {
    /// <p>The message you want to send.</p>
    ///         <p>If you are publishing to a topic and you want to send the same message to all
    ///             transport protocols, include the text of the message as a String value. If you want to
    ///             send different messages for each transport protocol, set the value of the
    ///                 <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object
    ///             for the <code>Message</code> parameter.
    ///         </p>
    ///         <p></p>
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>With the exception of SMS, messages must be UTF-8 encoded strings and at most
    ///                     256 KB in size (262,144 bytes, not 262,144 characters).</p>
    ///             </li>
    ///             <li>
    ///                 <p>For SMS, each message can contain up to 140 characters. This character limit
    ///                     depends on the encoding schema. For example, an SMS message can contain 160 GSM
    ///                     characters, 140 ASCII characters, or 70 UCS-2 characters.</p>
    ///                 <p>If you publish a message that exceeds this size limit, Amazon SNS sends the message
    ///                     as multiple messages, each fitting within the size limit. Messages aren't
    ///                     truncated mid-word but are cut off at whole-word boundaries.</p>
    ///                 <p>The total size limit for a single SMS <code>Publish</code> action is 1,600
    ///                     characters.</p>
    ///             </li>
    ///          </ul>
    ///         <p>JSON-specific constraints:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>Keys in the JSON object that correspond to supported transport protocols must
    ///                     have simple JSON string values.</p>
    ///             </li>
    ///             <li>
    ///                 <p>The values will be parsed (unescaped) before they are used in outgoing
    ///                     messages.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Outbound notifications are JSON encoded (meaning that the characters will be
    ///                     reescaped for sending).</p>
    ///             </li>
    ///             <li>
    ///                 <p>Values have a minimum length of 0 (the empty string, "", is allowed).</p>
    ///             </li>
    ///             <li>
    ///                 <p>Values have a maximum length bounded by the overall message size (so,
    ///                     including multiple protocols may limit message sizes).</p>
    ///             </li>
    ///             <li>
    ///                 <p>Non-string values will cause the key to be ignored.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Keys that do not correspond to supported transport protocols are
    ///                     ignored.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Duplicate keys are not allowed.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Failure to parse or validate any key or value in the message will cause the
    ///                         <code>Publish</code> call to return an error (no partial delivery).</p>
    ///             </li>
    ///          </ul>
    public let message: String?
    /// <p>Message attributes for Publish action.</p>
    public let messageAttributes: [String:MessageAttributeValue]?
    /// <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    ///                 <code>MessageDeduplicationId</code> can contain up to 128 alphanumeric characters
    ///             (a-z, A-Z, 0-9) and punctuation
    ///             <code>(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    ///         <p>Every message must have a unique <code>MessageDeduplicationId</code>, which is a token
    ///             used for deduplication of sent messages. If a message with a particular
    ///                 <code>MessageDeduplicationId</code> is sent successfully, any message sent with the
    ///             same <code>MessageDeduplicationId</code> during the 5-minute deduplication interval is
    ///             treated as a duplicate. </p>
    ///         <p>If the topic has <code>ContentBasedDeduplication</code> set, the system generates a
    ///                 <code>MessageDeduplicationId</code> based on the contents of the message. Your
    ///                 <code>MessageDeduplicationId</code> overrides the generated one.</p>
    public let messageDeduplicationId: String?
    /// <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    ///                 <code>MessageGroupId</code> can contain up to 128 alphanumeric characters (a-z, A-Z,
    ///             0-9) and punctuation <code>(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    ///         <p>The <code>MessageGroupId</code> is a tag that specifies that a message belongs to a
    ///             specific message group. Messages that belong to the same message group are processed in
    ///             a FIFO manner (however, messages in different message groups might be processed out of
    ///             order). Every message must include a <code>MessageGroupId</code>.</p>
    public let messageGroupId: String?
    /// <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different
    ///             message for each protocol. For example, using one publish action, you can send a short
    ///             message to your SMS subscribers and a longer message to your email subscribers. If you
    ///             set <code>MessageStructure</code> to <code>json</code>, the value of the
    ///                 <code>Message</code> parameter must: </p>
    ///         <ul>
    ///             <li>
    ///                 <p>be a syntactically valid JSON object; and</p>
    ///             </li>
    ///             <li>
    ///                 <p>contain at least a top-level JSON key of "default" with a value that is a
    ///                     string.</p>
    ///             </li>
    ///          </ul>
    ///         <p>You can define other top-level keys that define the message you want to send to a
    ///             specific transport protocol (e.g., "http").</p>
    ///         <p>Valid value: <code>json</code>
    ///         </p>
    public let messageStructure: String?
    /// <p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p>
    ///         <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must
    ///             specify a value for the <code>TargetArn</code> or <code>TopicArn</code>
    ///             parameters.</p>
    public let phoneNumber: String?
    /// <p>Optional parameter to be used as the "Subject" line when the message is delivered to
    ///             email endpoints. This field will also be included, if present, in the standard JSON
    ///             messages delivered to other endpoints.</p>
    ///         <p>Constraints: Subjects must be ASCII text that begins with a letter, number, or
    ///             punctuation mark; must not include line breaks or control characters; and must be less
    ///             than 100 characters long.</p>
    public let subject: String?
    /// <p>If you don't specify a value for the <code>TargetArn</code> parameter, you must
    ///             specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code>
    ///             parameters.</p>
    public let targetArn: String?
    /// <p>The topic you want to publish to.</p>
    ///         <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify
    ///             a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>
    public let topicArn: String?

    public init (
        message: String? = nil,
        messageAttributes: [String:MessageAttributeValue]? = nil,
        messageDeduplicationId: String? = nil,
        messageGroupId: String? = nil,
        messageStructure: String? = nil,
        phoneNumber: String? = nil,
        subject: String? = nil,
        targetArn: String? = nil,
        topicArn: String? = nil
    )
    {
        self.message = message
        self.messageAttributes = messageAttributes
        self.messageDeduplicationId = messageDeduplicationId
        self.messageGroupId = messageGroupId
        self.messageStructure = messageStructure
        self.phoneNumber = phoneNumber
        self.subject = subject
        self.targetArn = targetArn
        self.topicArn = topicArn
    }
}

extension PublishInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PublishInput(message: \(String(describing: message)), messageAttributes: \(String(describing: messageAttributes)), messageDeduplicationId: \(String(describing: messageDeduplicationId)), messageGroupId: \(String(describing: messageGroupId)), messageStructure: \(String(describing: messageStructure)), phoneNumber: \(String(describing: phoneNumber)), subject: \(String(describing: subject)), targetArn: \(String(describing: targetArn)), topicArn: \(String(describing: topicArn)))"}
}
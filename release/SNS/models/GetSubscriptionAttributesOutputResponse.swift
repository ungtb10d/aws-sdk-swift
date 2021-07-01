// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Response for GetSubscriptionAttributes action.</p>
public struct GetSubscriptionAttributesOutputResponse: Equatable {
    /// <p>A map of the subscription's attributes. Attributes in this map include the
    ///             following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <code>ConfirmationWasAuthenticated</code> – <code>true</code> if the
    ///                     subscription confirmation request was authenticated.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>DeliveryPolicy</code> – The JSON serialization of the
    ///                     subscription's delivery policy.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>EffectiveDeliveryPolicy</code> – The JSON serialization of the
    ///                     effective delivery policy that takes into account the topic delivery policy and
    ///                     account system defaults.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>FilterPolicy</code> – The filter policy JSON that is assigned to
    ///                     the subscription. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html">Amazon SNS Message
    ///                         Filtering</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>Owner</code> – The AWS account ID of the subscription's
    ///                     owner.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>PendingConfirmation</code> – <code>true</code> if the subscription
    ///                     hasn't been confirmed. To confirm a pending subscription, call the
    ///                         <code>ConfirmSubscription</code> action with a confirmation token.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>RawMessageDelivery</code> – <code>true</code> if raw message
    ///                     delivery is enabled for the subscription. Raw messages are free of JSON
    ///                     formatting and can be sent to HTTP/S and Amazon SQS endpoints.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue.
    ///     Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    ///     or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held
    ///     in the dead-letter queue for further analysis or reprocessing.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>SubscriptionArn</code> – The subscription's ARN.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>TopicArn</code> – The topic ARN that the subscription is associated
    ///                     with.</p>
    ///             </li>
    ///          </ul>
    ///
    ///         <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    ///                 <ul>
    ///                   <li>
    ///                         <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
    ///                     </li>
    ///                   <li>
    ///                         <p>Amazon SNS listed as a trusted entity</p>
    ///                     </li>
    ///                </ul>
    ///                 <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions.
    ///                 For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
    ///                     to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    ///                     </li>
    ///          </ul>
    public let attributes: [String:String]?

    public init (
        attributes: [String:String]? = nil
    )
    {
        self.attributes = attributes
    }
}

extension GetSubscriptionAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSubscriptionAttributesOutputResponse(attributes: \(String(describing: attributes)))"}
}
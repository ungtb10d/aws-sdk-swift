// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated
///       with a specific job. The <code>Notification</code> object is returned as a part of the
///       response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data
///       type.</p>
///
///          <p>When the notification settings are defined during job creation, you can choose to
///       notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of
///       strings, or you can specify that you want to have Amazon SNS notifications sent out for all
///       job states with <code>NotifyAll</code> set to true.</p>
public struct Notification: Equatable {
    /// <p>The list of job states that will trigger a notification for this job.</p>
    public let jobStatesToNotify: [JobState]?
    /// <p>Any change in job state will trigger a notification for this job.</p>
    public let notifyAll: Bool
    /// <p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can
    ///       create Amazon Resource Names (ARNs) for topics by using the <a href="https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html">CreateTopic</a> Amazon SNS API
    ///       action.</p>
    ///
    ///          <p>You can subscribe email addresses to an Amazon SNS topic through the AWS Management
    ///       Console, or by using the <a href="https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html">Subscribe</a> AWS Simple Notification Service (SNS) API action.</p>
    public let snsTopicARN: String?

    public init (
        jobStatesToNotify: [JobState]? = nil,
        notifyAll: Bool = false,
        snsTopicARN: String? = nil
    )
    {
        self.jobStatesToNotify = jobStatesToNotify
        self.notifyAll = notifyAll
        self.snsTopicARN = snsTopicARN
    }
}

extension Notification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Notification(jobStatesToNotify: \(String(describing: jobStatesToNotify)), notifyAll: \(String(describing: notifyAll)), snsTopicARN: \(String(describing: snsTopicARN)))"}
}
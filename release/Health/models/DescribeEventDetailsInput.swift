// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeEventDetailsInput: Equatable {
    /// <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    ///          </p>
    public let eventArns: [String]?
    /// <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    public let locale: String?

    public init (
        eventArns: [String]? = nil,
        locale: String? = nil
    )
    {
        self.eventArns = eventArns
        self.locale = locale
    }
}

extension DescribeEventDetailsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEventDetailsInput(eventArns: \(String(describing: eventArns)), locale: \(String(describing: locale)))"}
}
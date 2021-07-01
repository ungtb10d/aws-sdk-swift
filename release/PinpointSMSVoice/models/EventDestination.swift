// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// An object that defines an event destination.
public struct EventDestination: Equatable {
    /// An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    public let cloudWatchLogsDestination: CloudWatchLogsDestination?
    /// Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
    public let enabled: Bool
    /// An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    public let kinesisFirehoseDestination: KinesisFirehoseDestination?
    /// An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    public let matchingEventTypes: [EventType]?
    /// A name that identifies the event destination configuration.
    public let name: String?
    /// An object that contains information about an event destination that sends data to Amazon SNS.
    public let snsDestination: SnsDestination?

    public init (
        cloudWatchLogsDestination: CloudWatchLogsDestination? = nil,
        enabled: Bool = false,
        kinesisFirehoseDestination: KinesisFirehoseDestination? = nil,
        matchingEventTypes: [EventType]? = nil,
        name: String? = nil,
        snsDestination: SnsDestination? = nil
    )
    {
        self.cloudWatchLogsDestination = cloudWatchLogsDestination
        self.enabled = enabled
        self.kinesisFirehoseDestination = kinesisFirehoseDestination
        self.matchingEventTypes = matchingEventTypes
        self.name = name
        self.snsDestination = snsDestination
    }
}

extension EventDestination: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EventDestination(cloudWatchLogsDestination: \(String(describing: cloudWatchLogsDestination)), enabled: \(String(describing: enabled)), kinesisFirehoseDestination: \(String(describing: kinesisFirehoseDestination)), matchingEventTypes: \(String(describing: matchingEventTypes)), name: \(String(describing: name)), snsDestination: \(String(describing: snsDestination)))"}
}
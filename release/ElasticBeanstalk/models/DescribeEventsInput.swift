// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Request to retrieve a list of events for an environment.</p>
public struct DescribeEventsInput: Equatable {
    /// <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    ///       those associated with this application.</p>
    public let applicationName: String?
    /// <p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    ///       occur up to, but not including, the <code>EndTime</code>. </p>
    public let endTime: Date?
    /// <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    ///       associated with this environment.</p>
    public let environmentId: String?
    /// <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    ///       associated with this environment.</p>
    public let environmentName: String?
    /// <p>Specifies the maximum number of events that can be returned, beginning with the most
    ///       recent event.</p>
    public let maxRecords: Int?
    /// <p>Pagination token. If specified, the events return the next batch of results.</p>
    public let nextToken: String?
    /// <p>The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the
    ///       returned descriptions to those associated with this custom platform version.</p>
    public let platformArn: String?
    /// <p>If specified, AWS Elastic Beanstalk restricts the described events to include only
    ///       those associated with this request ID.</p>
    public let requestId: String?
    /// <p>If specified, limits the events returned from this call to include only those with the
    ///       specified severity or higher.</p>
    public let severity: EventSeverity?
    /// <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    ///       occur on or after this time.</p>
    public let startTime: Date?
    /// <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    ///       are associated with this environment configuration.</p>
    public let templateName: String?
    /// <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    ///       associated with this application version.</p>
    public let versionLabel: String?

    public init (
        applicationName: String? = nil,
        endTime: Date? = nil,
        environmentId: String? = nil,
        environmentName: String? = nil,
        maxRecords: Int? = nil,
        nextToken: String? = nil,
        platformArn: String? = nil,
        requestId: String? = nil,
        severity: EventSeverity? = nil,
        startTime: Date? = nil,
        templateName: String? = nil,
        versionLabel: String? = nil
    )
    {
        self.applicationName = applicationName
        self.endTime = endTime
        self.environmentId = environmentId
        self.environmentName = environmentName
        self.maxRecords = maxRecords
        self.nextToken = nextToken
        self.platformArn = platformArn
        self.requestId = requestId
        self.severity = severity
        self.startTime = startTime
        self.templateName = templateName
        self.versionLabel = versionLabel
    }
}

extension DescribeEventsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEventsInput(applicationName: \(String(describing: applicationName)), endTime: \(String(describing: endTime)), environmentId: \(String(describing: environmentId)), environmentName: \(String(describing: environmentName)), maxRecords: \(String(describing: maxRecords)), nextToken: \(String(describing: nextToken)), platformArn: \(String(describing: platformArn)), requestId: \(String(describing: requestId)), severity: \(String(describing: severity)), startTime: \(String(describing: startTime)), templateName: \(String(describing: templateName)), versionLabel: \(String(describing: versionLabel)))"}
}
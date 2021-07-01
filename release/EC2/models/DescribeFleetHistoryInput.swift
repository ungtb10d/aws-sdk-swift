// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeFleetHistoryInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The type of events to describe. By default, all events are described.</p>
    public let eventType: FleetEventType?
    /// <p>The ID of the EC2 Fleet.</p>
    public let fleetId: String?
    /// <p>The maximum number of results to return in a single call. Specify a value between 1 and
    ///          1000. The default value is 1000. To retrieve the remaining results, make another call with
    ///          the returned <code>NextToken</code> value.</p>
    public let maxResults: Int
    /// <p>The token for the next set of results.</p>
    public let nextToken: String?
    /// <p>The start date and time for the events, in UTC format (for example,
    ///             <i>YYYY</i>-<i>MM</i>-<i>DD</i>T<i>HH</i>:<i>MM</i>:<i>SS</i>Z).</p>
    public let startTime: Date?

    public init (
        dryRun: Bool = false,
        eventType: FleetEventType? = nil,
        fleetId: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil,
        startTime: Date? = nil
    )
    {
        self.dryRun = dryRun
        self.eventType = eventType
        self.fleetId = fleetId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.startTime = startTime
    }
}

extension DescribeFleetHistoryInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFleetHistoryInput(dryRun: \(String(describing: dryRun)), eventType: \(String(describing: eventType)), fleetId: \(String(describing: fleetId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), startTime: \(String(describing: startTime)))"}
}
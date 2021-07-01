// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains a request for LookupEvents.</p>
public struct LookupEventsInput: Equatable {
    /// <p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>
    public let endTime: Date?
    /// <p>Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example,
    ///          if you do not specify <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are returned.</p>
    public let eventCategory: EventCategory?
    /// <p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>
    public let lookupAttributes: [LookupAttribute]?
    /// <p>The number of events to return. Possible values are 1 through 50. The default is 50.</p>
    public let maxResults: Int?
    /// <p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call.
    ///          For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
    public let nextToken: String?
    /// <p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>
    public let startTime: Date?

    public init (
        endTime: Date? = nil,
        eventCategory: EventCategory? = nil,
        lookupAttributes: [LookupAttribute]? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        startTime: Date? = nil
    )
    {
        self.endTime = endTime
        self.eventCategory = eventCategory
        self.lookupAttributes = lookupAttributes
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.startTime = startTime
    }
}

extension LookupEventsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LookupEventsInput(endTime: \(String(describing: endTime)), eventCategory: \(String(describing: eventCategory)), lookupAttributes: \(String(describing: lookupAttributes)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), startTime: \(String(describing: startTime)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListEventTypesOutputResponse: Equatable {
    /// <p>Information about each event, including service name, resource type, event ID, and event
    ///       name.</p>
    public let eventTypes: [EventTypeSummary]?
    /// <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    public let nextToken: String?

    public init (
        eventTypes: [EventTypeSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.eventTypes = eventTypes
        self.nextToken = nextToken
    }
}

extension ListEventTypesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListEventTypesOutputResponse(eventTypes: \(String(describing: eventTypes)), nextToken: \(String(describing: nextToken)))"}
}
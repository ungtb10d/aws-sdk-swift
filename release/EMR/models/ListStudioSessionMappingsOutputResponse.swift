// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListStudioSessionMappingsOutputResponse: Equatable {
    /// <p>The pagination token that indicates the next set of results to retrieve.</p>
    public let marker: String?
    /// <p>A list of session mapping summary objects. Each object includes session mapping details
    ///          such as creation time, identity type (user or group), and Amazon EMR Studio ID.</p>
    public let sessionMappings: [SessionMappingSummary]?

    public init (
        marker: String? = nil,
        sessionMappings: [SessionMappingSummary]? = nil
    )
    {
        self.marker = marker
        self.sessionMappings = sessionMappings
    }
}

extension ListStudioSessionMappingsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListStudioSessionMappingsOutputResponse(marker: \(String(describing: marker)), sessionMappings: \(String(describing: sessionMappings)))"}
}
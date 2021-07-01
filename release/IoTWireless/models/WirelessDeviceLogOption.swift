// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The log option for wireless devices. Can be used to set log level for a specific type of wireless device.</p>
public struct WirelessDeviceLogOption: Equatable {
    /// <p>The list of wireless device event log options.</p>
    public let events: [WirelessDeviceEventLogOption]?
    /// <p>The log level for a log message.</p>
    public let logLevel: LogLevel?
    /// <p>The wireless device type.</p>
    public let type: WirelessDeviceType?

    public init (
        events: [WirelessDeviceEventLogOption]? = nil,
        logLevel: LogLevel? = nil,
        type: WirelessDeviceType? = nil
    )
    {
        self.events = events
        self.logLevel = logLevel
        self.type = type
    }
}

extension WirelessDeviceLogOption: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WirelessDeviceLogOption(events: \(String(describing: events)), logLevel: \(String(describing: logLevel)), type: \(String(describing: type)))"}
}
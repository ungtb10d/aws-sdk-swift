// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The fields contained in log events found by a <code>GetLogGroupFields</code> operation,
///       along with the percentage of queried log events in which each field appears.</p>
public struct LogGroupField: Equatable {
    /// <p>The name of a log field.</p>
    public let name: String?
    /// <p>The percentage of log events queried that contained the field.</p>
    public let percent: Int

    public init (
        name: String? = nil,
        percent: Int = 0
    )
    {
        self.name = name
        self.percent = percent
    }
}

extension LogGroupField: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LogGroupField(name: \(String(describing: name)), percent: \(String(describing: percent)))"}
}
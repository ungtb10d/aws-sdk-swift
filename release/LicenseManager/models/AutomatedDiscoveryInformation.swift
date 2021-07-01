// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes automated discovery.</p>
public struct AutomatedDiscoveryInformation: Equatable {
    /// <p>Time that automated discovery last ran.</p>
    public let lastRunTime: Date?

    public init (
        lastRunTime: Date? = nil
    )
    {
        self.lastRunTime = lastRunTime
    }
}

extension AutomatedDiscoveryInformation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AutomatedDiscoveryInformation(lastRunTime: \(String(describing: lastRunTime)))"}
}
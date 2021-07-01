// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Summary information about the human loop.</p>
public struct HumanLoopSummary: Equatable {
    /// <p>When Amazon Augmented AI created the human loop.</p>
    public let creationTime: Date?
    /// <p>The reason why the human loop failed. A failure reason is returned when the status of the
    ///       human loop is <code>Failed</code>.</p>
    public let failureReason: String?
    /// <p>The Amazon Resource Name (ARN) of the flow definition used to configure the human
    ///       loop.</p>
    public let flowDefinitionArn: String?
    /// <p>The name of the human loop.</p>
    public let humanLoopName: String?
    /// <p>The status of the human loop. </p>
    public let humanLoopStatus: HumanLoopStatus?

    public init (
        creationTime: Date? = nil,
        failureReason: String? = nil,
        flowDefinitionArn: String? = nil,
        humanLoopName: String? = nil,
        humanLoopStatus: HumanLoopStatus? = nil
    )
    {
        self.creationTime = creationTime
        self.failureReason = failureReason
        self.flowDefinitionArn = flowDefinitionArn
        self.humanLoopName = humanLoopName
        self.humanLoopStatus = humanLoopStatus
    }
}

extension HumanLoopSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HumanLoopSummary(creationTime: \(String(describing: creationTime)), failureReason: \(String(describing: failureReason)), flowDefinitionArn: \(String(describing: flowDefinitionArn)), humanLoopName: \(String(describing: humanLoopName)), humanLoopStatus: \(String(describing: humanLoopStatus)))"}
}
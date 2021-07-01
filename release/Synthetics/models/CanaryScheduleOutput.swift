// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>How long, in seconds, for the canary to continue making regular runs according to the schedule in the
///          <code>Expression</code> value.</p>
public struct CanaryScheduleOutput: Equatable {
    /// <p>How long, in seconds, for the canary to continue making regular runs after it
    ///          was created. The runs are performed according to the schedule in the
    ///          <code>Expression</code> value.</p>
    public let durationInSeconds: Int?
    /// <p>A rate expression that defines how often the canary is to run. The syntax is
    ///          <code>rate(<i>number unit</i>)</code>. <i>unit</i>
    ///          can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
    ///          <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every
    ///          10 minutes, and <code>rate(1 hour)</code> runs it once every hour.</p>
    ///          <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value
    ///          that causes the
    ///          canary to run only once when it is started.</p>
    public let expression: String?

    public init (
        durationInSeconds: Int? = nil,
        expression: String? = nil
    )
    {
        self.durationInSeconds = durationInSeconds
        self.expression = expression
    }
}

extension CanaryScheduleOutput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CanaryScheduleOutput(durationInSeconds: \(String(describing: durationInSeconds)), expression: \(String(describing: expression)))"}
}
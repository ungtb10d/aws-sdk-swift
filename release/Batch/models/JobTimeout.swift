// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object representing a job timeout configuration.</p>
public struct JobTimeout: Equatable {
    /// <p>The time duration in seconds (measured from the job attempt's <code>startedAt</code> timestamp) after which
    ///    AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds.</p>
    public let attemptDurationSeconds: Int

    public init (
        attemptDurationSeconds: Int = 0
    )
    {
        self.attemptDurationSeconds = attemptDurationSeconds
    }
}

extension JobTimeout: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobTimeout(attemptDurationSeconds: \(String(describing: attemptDurationSeconds)))"}
}
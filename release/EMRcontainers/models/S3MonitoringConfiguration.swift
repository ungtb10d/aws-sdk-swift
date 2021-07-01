// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Amazon S3 configuration for monitoring log publishing. You can configure your jobs to send log information to Amazon S3.</p>
public struct S3MonitoringConfiguration: Equatable {
    /// <p>Amazon S3 destination URI for log publishing.</p>
    public let logUri: String?

    public init (
        logUri: String? = nil
    )
    {
        self.logUri = logUri
    }
}

extension S3MonitoringConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3MonitoringConfiguration(logUri: \(String(describing: logUri)))"}
}
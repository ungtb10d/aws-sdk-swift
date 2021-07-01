// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output configuration parameters of a batch inference job.</p>
public struct BatchInferenceJobOutput: Equatable {
    /// <p>Information on the Amazon S3 bucket in which the batch inference job's output is stored.</p>
    public let s3DataDestination: S3DataConfig?

    public init (
        s3DataDestination: S3DataConfig? = nil
    )
    {
        self.s3DataDestination = s3DataDestination
    }
}

extension BatchInferenceJobOutput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchInferenceJobOutput(s3DataDestination: \(String(describing: s3DataDestination)))"}
}
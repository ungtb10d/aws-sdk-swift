// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the results of a processing job. The processing output must specify exactly one of
///             either <code>S3Output</code> or <code>FeatureStoreOutput</code> types.</p>
public struct ProcessingOutput: Equatable {
    /// <p>When <code>True</code>, output operations such as data upload are managed natively by the
    ///             processing job application. When <code>False</code> (default), output operations are managed by
    ///             Amazon SageMaker.</p>
    public let appManaged: Bool
    /// <p>Configuration for processing job outputs in Amazon SageMaker Feature Store. This processing output
    ///             type is only supported when <code>AppManaged</code> is specified. </p>
    public let featureStoreOutput: ProcessingFeatureStoreOutput?
    /// <p>The name for the processing job output.</p>
    public let outputName: String?
    /// <p>Configuration for processing job outputs in Amazon S3.</p>
    public let s3Output: ProcessingS3Output?

    public init (
        appManaged: Bool = false,
        featureStoreOutput: ProcessingFeatureStoreOutput? = nil,
        outputName: String? = nil,
        s3Output: ProcessingS3Output? = nil
    )
    {
        self.appManaged = appManaged
        self.featureStoreOutput = featureStoreOutput
        self.outputName = outputName
        self.s3Output = s3Output
    }
}

extension ProcessingOutput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProcessingOutput(appManaged: \(String(describing: appManaged)), featureStoreOutput: \(String(describing: featureStoreOutput)), outputName: \(String(describing: outputName)), s3Output: \(String(describing: s3Output)))"}
}
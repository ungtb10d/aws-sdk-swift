// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Container image configuration object for the monitoring job.</p>
public struct MonitoringAppSpecification: Equatable {
    /// <p>An array of arguments for the container used to run the monitoring job.</p>
    public let containerArguments: [String]?
    /// <p>Specifies the entrypoint for a container used to run the monitoring job.</p>
    public let containerEntrypoint: [String]?
    /// <p>The container image to be run by the monitoring job.</p>
    public let imageUri: String?
    /// <p>An Amazon S3 URI to a script that is called after analysis has been performed.
    ///          Applicable only for the built-in (first party) containers.</p>
    public let postAnalyticsProcessorSourceUri: String?
    /// <p>An Amazon S3 URI to a script that is called per row prior to running analysis. It can
    ///          base64 decode the payload and convert it into a flatted json so that the built-in container
    ///          can use the converted data. Applicable only for the built-in (first party)
    ///          containers.</p>
    public let recordPreprocessorSourceUri: String?

    public init (
        containerArguments: [String]? = nil,
        containerEntrypoint: [String]? = nil,
        imageUri: String? = nil,
        postAnalyticsProcessorSourceUri: String? = nil,
        recordPreprocessorSourceUri: String? = nil
    )
    {
        self.containerArguments = containerArguments
        self.containerEntrypoint = containerEntrypoint
        self.imageUri = imageUri
        self.postAnalyticsProcessorSourceUri = postAnalyticsProcessorSourceUri
        self.recordPreprocessorSourceUri = recordPreprocessorSourceUri
    }
}

extension MonitoringAppSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MonitoringAppSpecification(containerArguments: \(String(describing: containerArguments)), containerEntrypoint: \(String(describing: containerEntrypoint)), imageUri: \(String(describing: imageUri)), postAnalyticsProcessorSourceUri: \(String(describing: postAnalyticsProcessorSourceUri)), recordPreprocessorSourceUri: \(String(describing: recordPreprocessorSourceUri)))"}
}
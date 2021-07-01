// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Specifies configuration information for the input data for the data ingestion job,
///          including input data S3 location. </p>
public struct IngestionInputConfiguration: Equatable {
    /// <p>The location information for the S3 bucket used for input data for the data ingestion.
    ///       </p>
    public let s3InputConfiguration: IngestionS3InputConfiguration?

    public init (
        s3InputConfiguration: IngestionS3InputConfiguration? = nil
    )
    {
        self.s3InputConfiguration = s3InputConfiguration
    }
}

extension IngestionInputConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IngestionInputConfiguration(s3InputConfiguration: \(String(describing: s3InputConfiguration)))"}
}
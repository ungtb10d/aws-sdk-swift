// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the format and S3 location of the parallel data input file.</p>
public struct ParallelDataConfig: Equatable {
    /// <p>The format of the parallel data input file.</p>
    public let format: ParallelDataFormat?
    /// <p>The URI of the Amazon S3 folder that contains the parallel data input file. The folder
    ///       must be in the same Region as the API endpoint you are calling.</p>
    public let s3Uri: String?

    public init (
        format: ParallelDataFormat? = nil,
        s3Uri: String? = nil
    )
    {
        self.format = format
        self.s3Uri = s3Uri
    }
}

extension ParallelDataConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParallelDataConfig(format: \(String(describing: format)), s3Uri: \(String(describing: s3Uri)))"}
}
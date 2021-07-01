// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDatasetInput: Equatable {
    /// <p>The file format of a dataset that is created from an S3 file or folder.</p>
    public let format: InputFormat?
    /// <p>Represents a set of options that define the structure of either comma-separated value (CSV), Excel, or JSON input.</p>
    public let formatOptions: FormatOptions?
    /// <p>Represents information on how DataBrew can find data, in either the AWS Glue Data Catalog or
    ///             Amazon S3.</p>
    public let input: Input?
    /// <p>The name of the dataset to be updated.</p>
    public let name: String?
    /// <p>A set of options that defines how DataBrew interprets an S3 path of the dataset.</p>
    public let pathOptions: PathOptions?

    public init (
        format: InputFormat? = nil,
        formatOptions: FormatOptions? = nil,
        input: Input? = nil,
        name: String? = nil,
        pathOptions: PathOptions? = nil
    )
    {
        self.format = format
        self.formatOptions = formatOptions
        self.input = input
        self.name = name
        self.pathOptions = pathOptions
    }
}

extension UpdateDatasetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDatasetInput(format: \(String(describing: format)), formatOptions: \(String(describing: formatOptions)), input: \(String(describing: input)), name: \(String(describing: name)), pathOptions: \(String(describing: pathOptions)))"}
}
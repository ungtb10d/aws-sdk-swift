// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about the configuration of the S3 bucket that contains source files.</p>
public struct S3SourceConfig: Equatable {
    /// <p>Contains information about a source file's formatting.</p>
    public let fileFormatDescriptor: FileFormatDescriptor?
    /// <p>A list of paths to the historical data files.</p>
    public let historicalDataPathList: [String]?
    /// <p>The ARN of an IAM role that has read and write access permissions to the source S3 bucket.</p>
    public let roleArn: String?
    /// <p>A list of templated paths to the source files.</p>
    public let templatedPathList: [String]?

    public init (
        fileFormatDescriptor: FileFormatDescriptor? = nil,
        historicalDataPathList: [String]? = nil,
        roleArn: String? = nil,
        templatedPathList: [String]? = nil
    )
    {
        self.fileFormatDescriptor = fileFormatDescriptor
        self.historicalDataPathList = historicalDataPathList
        self.roleArn = roleArn
        self.templatedPathList = templatedPathList
    }
}

extension S3SourceConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3SourceConfig(fileFormatDescriptor: \(String(describing: fileFormatDescriptor)), historicalDataPathList: \(String(describing: historicalDataPathList)), roleArn: \(String(describing: roleArn)), templatedPathList: \(String(describing: templatedPathList)))"}
}
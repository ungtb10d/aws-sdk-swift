// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Limits that are related to concurrency and storage. All file and storage sizes are in bytes.</p>
public struct AccountLimit: Equatable {
    /// <p>The maximum size of a function's deployment package and layers when they're extracted.</p>
    public let codeSizeUnzipped: Int
    /// <p>The maximum size of a deployment package when it's uploaded directly to AWS Lambda. Use Amazon S3 for larger
    ///       files.</p>
    public let codeSizeZipped: Int
    /// <p>The maximum number of simultaneous function executions.</p>
    public let concurrentExecutions: Int
    /// <p>The amount of storage space that you can use for all deployment packages and layer archives.</p>
    public let totalCodeSize: Int
    /// <p>The maximum number of simultaneous function executions, minus the capacity that's reserved for individual
    ///       functions with <a>PutFunctionConcurrency</a>.</p>
    public let unreservedConcurrentExecutions: Int?

    public init (
        codeSizeUnzipped: Int = 0,
        codeSizeZipped: Int = 0,
        concurrentExecutions: Int = 0,
        totalCodeSize: Int = 0,
        unreservedConcurrentExecutions: Int? = nil
    )
    {
        self.codeSizeUnzipped = codeSizeUnzipped
        self.codeSizeZipped = codeSizeZipped
        self.concurrentExecutions = concurrentExecutions
        self.totalCodeSize = totalCodeSize
        self.unreservedConcurrentExecutions = unreservedConcurrentExecutions
    }
}

extension AccountLimit: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccountLimit(codeSizeUnzipped: \(String(describing: codeSizeUnzipped)), codeSizeZipped: \(String(describing: codeSizeZipped)), concurrentExecutions: \(String(describing: concurrentExecutions)), totalCodeSize: \(String(describing: totalCodeSize)), unreservedConcurrentExecutions: \(String(describing: unreservedConcurrentExecutions)))"}
}
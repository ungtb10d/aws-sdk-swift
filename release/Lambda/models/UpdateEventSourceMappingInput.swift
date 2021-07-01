// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateEventSourceMappingInput: Equatable {
    /// <p>The maximum number of items to retrieve in a single batch.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
    ///             </li>
    ///          </ul>
    public let batchSize: Int?
    /// <p>(Streams) If the function returns an error, split the batch in two and retry.</p>
    public let bisectBatchOnFunctionError: Bool?
    /// <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    public let destinationConfig: DestinationConfig?
    /// <p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>
    public let enabled: Bool?
    /// <p>The name of the Lambda function.</p>
    ///          <p class="title">
    ///             <b>Name formats</b>
    ///          </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>Function name</b> - <code>MyFunction</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    ///             </li>
    ///          </ul>
    ///          <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    ///       characters in length.</p>
    public let functionName: String?
    /// <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    public let functionResponseTypes: [FunctionResponseType]?
    /// <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>
    public let maximumBatchingWindowInSeconds: Int?
    /// <p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>
    public let maximumRecordAgeInSeconds: Int?
    /// <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>
    public let maximumRetryAttempts: Int?
    /// <p>(Streams) The number of batches to process from each shard concurrently.</p>
    public let parallelizationFactor: Int?
    /// <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    public let sourceAccessConfigurations: [SourceAccessConfiguration]?
    /// <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    public let tumblingWindowInSeconds: Int?
    /// <p>The identifier of the event source mapping.</p>
    public let uUID: String?

    public init (
        batchSize: Int? = nil,
        bisectBatchOnFunctionError: Bool? = nil,
        destinationConfig: DestinationConfig? = nil,
        enabled: Bool? = nil,
        functionName: String? = nil,
        functionResponseTypes: [FunctionResponseType]? = nil,
        maximumBatchingWindowInSeconds: Int? = nil,
        maximumRecordAgeInSeconds: Int? = nil,
        maximumRetryAttempts: Int? = nil,
        parallelizationFactor: Int? = nil,
        sourceAccessConfigurations: [SourceAccessConfiguration]? = nil,
        tumblingWindowInSeconds: Int? = nil,
        uUID: String? = nil
    )
    {
        self.batchSize = batchSize
        self.bisectBatchOnFunctionError = bisectBatchOnFunctionError
        self.destinationConfig = destinationConfig
        self.enabled = enabled
        self.functionName = functionName
        self.functionResponseTypes = functionResponseTypes
        self.maximumBatchingWindowInSeconds = maximumBatchingWindowInSeconds
        self.maximumRecordAgeInSeconds = maximumRecordAgeInSeconds
        self.maximumRetryAttempts = maximumRetryAttempts
        self.parallelizationFactor = parallelizationFactor
        self.sourceAccessConfigurations = sourceAccessConfigurations
        self.tumblingWindowInSeconds = tumblingWindowInSeconds
        self.uUID = uUID
    }
}

extension UpdateEventSourceMappingInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateEventSourceMappingInput(batchSize: \(String(describing: batchSize)), bisectBatchOnFunctionError: \(String(describing: bisectBatchOnFunctionError)), destinationConfig: \(String(describing: destinationConfig)), enabled: \(String(describing: enabled)), functionName: \(String(describing: functionName)), functionResponseTypes: \(String(describing: functionResponseTypes)), maximumBatchingWindowInSeconds: \(String(describing: maximumBatchingWindowInSeconds)), maximumRecordAgeInSeconds: \(String(describing: maximumRecordAgeInSeconds)), maximumRetryAttempts: \(String(describing: maximumRetryAttempts)), parallelizationFactor: \(String(describing: parallelizationFactor)), sourceAccessConfigurations: \(String(describing: sourceAccessConfigurations)), tumblingWindowInSeconds: \(String(describing: tumblingWindowInSeconds)), uUID: \(String(describing: uUID)))"}
}
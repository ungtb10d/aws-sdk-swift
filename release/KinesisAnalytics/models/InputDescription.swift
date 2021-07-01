// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the application input configuration.
///             For more information,
///             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
///         </p>
public struct InputDescription: Equatable {
    /// <p>Returns the in-application stream names that are mapped to the
    ///             stream source.</p>
    public let inAppStreamNames: [String]?
    /// <p>Input ID associated with the application input.
    ///             This is the ID that Amazon Kinesis Analytics assigns to each
    ///             input configuration you add to your application. </p>
    public let inputId: String?
    /// <p>Describes the configured parallelism (number of in-application streams
    ///             mapped to the streaming source).</p>
    public let inputParallelism: InputParallelism?
    /// <p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>
    public let inputProcessingConfigurationDescription: InputProcessingConfigurationDescription?
    /// <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding
    ///             columns in the in-application stream that is being created. </p>
    public let inputSchema: SourceSchema?
    /// <p>Point at which the application is configured to read from the input stream.</p>
    public let inputStartingPositionConfiguration: InputStartingPositionConfiguration?
    /// <p>If an Amazon Kinesis Firehose delivery stream is configured as a streaming source,
    ///             provides the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics
    ///             to access the stream on your behalf.</p>
    public let kinesisFirehoseInputDescription: KinesisFirehoseInputDescription?
    /// <p>If an Amazon Kinesis stream is configured as streaming source, provides Amazon
    ///             Kinesis stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis
    ///             Analytics to access the stream on your behalf.</p>
    public let kinesisStreamsInputDescription: KinesisStreamsInputDescription?
    /// <p>In-application name prefix.</p>
    public let namePrefix: String?

    public init (
        inAppStreamNames: [String]? = nil,
        inputId: String? = nil,
        inputParallelism: InputParallelism? = nil,
        inputProcessingConfigurationDescription: InputProcessingConfigurationDescription? = nil,
        inputSchema: SourceSchema? = nil,
        inputStartingPositionConfiguration: InputStartingPositionConfiguration? = nil,
        kinesisFirehoseInputDescription: KinesisFirehoseInputDescription? = nil,
        kinesisStreamsInputDescription: KinesisStreamsInputDescription? = nil,
        namePrefix: String? = nil
    )
    {
        self.inAppStreamNames = inAppStreamNames
        self.inputId = inputId
        self.inputParallelism = inputParallelism
        self.inputProcessingConfigurationDescription = inputProcessingConfigurationDescription
        self.inputSchema = inputSchema
        self.inputStartingPositionConfiguration = inputStartingPositionConfiguration
        self.kinesisFirehoseInputDescription = kinesisFirehoseInputDescription
        self.kinesisStreamsInputDescription = kinesisStreamsInputDescription
        self.namePrefix = namePrefix
    }
}

extension InputDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputDescription(inAppStreamNames: \(String(describing: inAppStreamNames)), inputId: \(String(describing: inputId)), inputParallelism: \(String(describing: inputParallelism)), inputProcessingConfigurationDescription: \(String(describing: inputProcessingConfigurationDescription)), inputSchema: \(String(describing: inputSchema)), inputStartingPositionConfiguration: \(String(describing: inputStartingPositionConfiguration)), kinesisFirehoseInputDescription: \(String(describing: kinesisFirehoseInputDescription)), kinesisStreamsInputDescription: \(String(describing: kinesisStreamsInputDescription)), namePrefix: \(String(describing: namePrefix)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For a SQL-based Kinesis Data Analytics application, provides the configuration
///         information about an input processor. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>
public struct InputProcessingConfigurationDescription: Equatable {
    /// <p>Provides configuration information about the associated <a>InputLambdaProcessorDescription</a>
    ///          </p>
    public let inputLambdaProcessorDescription: InputLambdaProcessorDescription?

    public init (
        inputLambdaProcessorDescription: InputLambdaProcessorDescription? = nil
    )
    {
        self.inputLambdaProcessorDescription = inputLambdaProcessorDescription
    }
}

extension InputProcessingConfigurationDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputProcessingConfigurationDescription(inputLambdaProcessorDescription: \(String(describing: inputLambdaProcessorDescription)))"}
}
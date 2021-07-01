// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the configuration parameters for a <code>Lambda Invoke</code> operation.</p>
public struct LambdaInvokeOperation: Equatable {
    /// <p>The Amazon Resource Name (ARN) for the AWS Lambda function that the specified job will invoke on every object in the manifest.</p>
    public let functionArn: String?

    public init (
        functionArn: String? = nil
    )
    {
        self.functionArn = functionArn
    }
}

extension LambdaInvokeOperation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LambdaInvokeOperation(functionArn: \(String(describing: functionArn)))"}
}
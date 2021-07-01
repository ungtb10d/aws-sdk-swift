// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>When you configure a SQL-based Kinesis Data Analytics application's output,
///       identifies an AWS Lambda function as the destination. You provide the function Amazon Resource
///       Name (ARN) of the Lambda function. </p>
public struct LambdaOutput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the destination Lambda function to write to.</p>
    ///          <note>
    ///             <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda">Example ARNs: AWS Lambda</a>
    ///             </p>
    ///          </note>
    public let resourceARN: String?

    public init (
        resourceARN: String? = nil
    )
    {
        self.resourceARN = resourceARN
    }
}

extension LambdaOutput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LambdaOutput(resourceARN: \(String(describing: resourceARN)))"}
}
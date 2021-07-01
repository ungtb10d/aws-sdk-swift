// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeStackSetOperationOutputResponse: Equatable {
    /// <p>The specified stack set operation.</p>
    public let stackSetOperation: StackSetOperation?

    public init (
        stackSetOperation: StackSetOperation? = nil
    )
    {
        self.stackSetOperation = stackSetOperation
    }
}

extension DescribeStackSetOperationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeStackSetOperationOutputResponse(stackSetOperation: \(String(describing: stackSetOperation)))"}
}
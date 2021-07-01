// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> The output for the <a>DescribeJobFlows</a> operation. </p>
public struct DescribeJobFlowsOutputResponse: Equatable {
    /// <p>A list of job flows matching the parameters supplied.</p>
    public let jobFlows: [JobFlowDetail]?

    public init (
        jobFlows: [JobFlowDetail]? = nil
    )
    {
        self.jobFlows = jobFlows
    }
}

extension DescribeJobFlowsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeJobFlowsOutputResponse(jobFlows: \(String(describing: jobFlows)))"}
}
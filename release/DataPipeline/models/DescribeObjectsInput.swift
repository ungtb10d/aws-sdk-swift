// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for DescribeObjects.</p>
public struct DescribeObjectsInput: Equatable {
    /// <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
    public let evaluateExpressions: Bool
    /// <p>The starting point for the results to be returned. For the first call, this value should be empty.
    ///            As long as there are more results, continue to call <code>DescribeObjects</code> with
    ///            the marker value from the previous call to retrieve the next set of results.</p>
    public let marker: String?
    /// <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
    public let objectIds: [String]?
    /// <p>The ID of the pipeline that contains the object definitions.</p>
    public let pipelineId: String?

    public init (
        evaluateExpressions: Bool = false,
        marker: String? = nil,
        objectIds: [String]? = nil,
        pipelineId: String? = nil
    )
    {
        self.evaluateExpressions = evaluateExpressions
        self.marker = marker
        self.objectIds = objectIds
        self.pipelineId = pipelineId
    }
}

extension DescribeObjectsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeObjectsInput(evaluateExpressions: \(String(describing: evaluateExpressions)), marker: \(String(describing: marker)), objectIds: \(String(describing: objectIds)), pipelineId: \(String(describing: pipelineId)))"}
}
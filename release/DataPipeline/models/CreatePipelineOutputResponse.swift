// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of CreatePipeline.</p>
public struct CreatePipelineOutputResponse: Equatable {
    /// <p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>
    public let pipelineId: String?

    public init (
        pipelineId: String? = nil
    )
    {
        self.pipelineId = pipelineId
    }
}

extension CreatePipelineOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePipelineOutputResponse(pipelineId: \(String(describing: pipelineId)))"}
}
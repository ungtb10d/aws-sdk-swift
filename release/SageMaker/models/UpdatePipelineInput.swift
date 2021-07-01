// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdatePipelineInput: Equatable {
    /// <p>The JSON pipeline definition.</p>
    public let pipelineDefinition: String?
    /// <p>The description of the pipeline.</p>
    public let pipelineDescription: String?
    /// <p>The display name of the pipeline.</p>
    public let pipelineDisplayName: String?
    /// <p>The name of the pipeline to update.</p>
    public let pipelineName: String?
    /// <p>The Amazon Resource Name (ARN) that the pipeline uses to execute.</p>
    public let roleArn: String?

    public init (
        pipelineDefinition: String? = nil,
        pipelineDescription: String? = nil,
        pipelineDisplayName: String? = nil,
        pipelineName: String? = nil,
        roleArn: String? = nil
    )
    {
        self.pipelineDefinition = pipelineDefinition
        self.pipelineDescription = pipelineDescription
        self.pipelineDisplayName = pipelineDisplayName
        self.pipelineName = pipelineName
        self.roleArn = roleArn
    }
}

extension UpdatePipelineInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdatePipelineInput(pipelineDefinition: \(String(describing: pipelineDefinition)), pipelineDescription: \(String(describing: pipelineDescription)), pipelineDisplayName: \(String(describing: pipelineDisplayName)), pipelineName: \(String(describing: pipelineName)), roleArn: \(String(describing: roleArn)))"}
}
// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The current source for one of the pipelines in the multiplex.
public struct MultiplexProgramPipelineDetail: Equatable {
    /// Identifies the channel pipeline that is currently active for the pipeline (identified by PipelineId) in the multiplex.
    public let activeChannelPipeline: String?
    /// Identifies a specific pipeline in the multiplex.
    public let pipelineId: String?

    public init (
        activeChannelPipeline: String? = nil,
        pipelineId: String? = nil
    )
    {
        self.activeChannelPipeline = activeChannelPipeline
        self.pipelineId = pipelineId
    }
}

extension MultiplexProgramPipelineDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MultiplexProgramPipelineDetail(activeChannelPipeline: \(String(describing: activeChannelPipeline)), pipelineId: \(String(describing: pipelineId)))"}
}
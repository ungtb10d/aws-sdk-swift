// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSpeechSynthesisTaskOutputResponse: Equatable {
    /// <p>SynthesisTask object that provides information from the requested task, including output
    ///       format, creation time, task status, and so on.</p>
    public let synthesisTask: SynthesisTask?

    public init (
        synthesisTask: SynthesisTask? = nil
    )
    {
        self.synthesisTask = synthesisTask
    }
}

extension GetSpeechSynthesisTaskOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSpeechSynthesisTaskOutputResponse(synthesisTask: \(String(describing: synthesisTask)))"}
}
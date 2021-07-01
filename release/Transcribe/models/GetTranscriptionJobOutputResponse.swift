// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetTranscriptionJobOutputResponse: Equatable {
    /// <p>An object that contains the results of the transcription job.</p>
    public let transcriptionJob: TranscriptionJob?

    public init (
        transcriptionJob: TranscriptionJob? = nil
    )
    {
        self.transcriptionJob = transcriptionJob
    }
}

extension GetTranscriptionJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetTranscriptionJobOutputResponse(transcriptionJob: \(String(describing: transcriptionJob)))"}
}
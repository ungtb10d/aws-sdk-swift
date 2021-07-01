// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines settings for using an Amazon Polly voice to communicate with a
///          user.</p>
public struct VoiceSettings: Equatable {
    /// <p>The identifier of the Amazon Polly voice to use.</p>
    public let voiceId: String?

    public init (
        voiceId: String? = nil
    )
    {
        self.voiceId = voiceId
    }
}

extension VoiceSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VoiceSettings(voiceId: \(String(describing: voiceId)))"}
}
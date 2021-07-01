// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateVoiceTemplateInput: Equatable {
    /// <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    public let templateName: String?
    /// <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    public let voiceTemplateRequest: VoiceTemplateRequest?

    public init (
        templateName: String? = nil,
        voiceTemplateRequest: VoiceTemplateRequest? = nil
    )
    {
        self.templateName = templateName
        self.voiceTemplateRequest = voiceTemplateRequest
    }
}

extension CreateVoiceTemplateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateVoiceTemplateInput(templateName: \(String(describing: templateName)), voiceTemplateRequest: \(String(describing: voiceTemplateRequest)))"}
}
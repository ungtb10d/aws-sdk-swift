// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Use audio selector groups to combine multiple sidecar audio inputs so that you can assign them to a single output audio tab (AudioDescription). Note that, if you're working with embedded audio, it's simpler to assign multiple input tracks into a single audio selector rather than use an audio selector group.
public struct AudioSelectorGroup: Equatable {
    /// Name of an Audio Selector within the same input to include in the group.  Audio selector names are standardized, based on their order within the input (e.g., "Audio Selector 1"). The audio selector name parameter can be repeated to add any number of audio selectors to the group.
    public let audioSelectorNames: [String]?

    public init (
        audioSelectorNames: [String]? = nil
    )
    {
        self.audioSelectorNames = audioSelectorNames
    }
}

extension AudioSelectorGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AudioSelectorGroup(audioSelectorNames: \(String(describing: audioSelectorNames)))"}
}